-- Listing 11.1.sql
-- Entwicklungszyklus in einem Skript

--Datenbankobjekte löschen
DROP TABLE test_quadrat;
DROP FUNCTION udf_quadrat;

--Funktion anlegen
CREATE FUNCTION udf_quadrat(IN iv_wert INT) 
RETURNS rv_ergebnis INT 
AS BEGIN
  rv_ergebnis = iv_wert * iv_wert; 
END;

--Testfälle anlegen
CREATE TABLE test_quadrat(wert INT, quadrat INT);
INSERT INTO test_quadrat VALUES (0,0);
INSERT INTO test_quadrat VALUES (1,1);
INSERT INTO test_quadrat VALUES (2,4);
INSERT INTO test_quadrat VALUES (-1,1);
INSERT INTO test_quadrat VALUES (-2,4);

--Testfälle ausführen
SELECT wert, 
       quadrat AS erwartungswert,
       udf_quadrat(wert) AS ergebnis,
       CASE WHEN udf_quadrat(wert) = quadrat
            THEN 'OK'
            ELSE 'Fehler'
            END AS testergebnis
FROM test_quadrat;
