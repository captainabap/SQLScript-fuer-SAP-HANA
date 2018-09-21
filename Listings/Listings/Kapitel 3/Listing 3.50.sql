-- Listing 3.50.sql
-- Beispiel für die Verwendung des Map-Merge Operators
 
 
 
--Anlegen einer Tabellen mit drei Zeitintervallen:
CREATE TABLE intervalle (id INT, von date, bis date);
INSERT INTO intervalle VALUES(1, '2017-01-01', '2017-01-05');
INSERT INTO intervalle VALUES(2, '2017-05-01', '2017-05-05');
INSERT INTO intervalle VALUES(3, '2017-05-08', '2017-05-09');

-- Anlegen einer Funktion, die für ein Zeitintervall alle 
-- Datumswerte liefert:
CREATE FUNCTION udf_tage(id INT, iv_von date, iv_bis date)
RETURNS TABLE (id INT, datum date)
AS BEGIN
 RETURN SELECT :id AS id,
               GENERATED_PERIOD_START AS datum 
        FROM SERIES_GENERATE_DATE( 
                          INCREMENT_BY => 'INTERVAL 1 DAY',
                          MIN_VALUE => :iv_von,
                          MAX_VALUE => ADD_DAYS(:iv_bis,1));
END;

--Ausführung von MapMerge in einem anonymen Block:
DO BEGIN
   lt_d = SELECT * FROM intervalle;
   lt_datum = MAP_MERGE( :lt_d, udf_tage(:lt_d.id, 
                                         :lt_d.von, 
                                         :lt_d.bis) );
   SELECT * FROM :lt_datum;
END;
--Aufräumen der angelegten Objekte
DROP TABLE intervalle;
DROP FUNCTION udf_tage;
