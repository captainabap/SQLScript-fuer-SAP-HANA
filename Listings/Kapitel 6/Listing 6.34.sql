-- Listing 6.34.sql
-- Der Bubblesort Algorithmus in SQLScript

--Tabellentyp TT_WERT anlegen
CREATE TYPE tt_wert AS TABLE(wert nvarchar(30));

--Funktion anlegen
CREATE FUNCTION udf_sort(in it_table tt_wert)
RETURNS tt_wert
AS BEGIN
   DECLARE la_werte  NVARCHAR(30) ARRAY;
   DECLARE lv_zeilen INT;       --Anzahl Zeilen
   DECLARE lv_runde INT;        --Aktuelle Runde
   DECLARE lv_zeile INT;        --Aktuelle Zeile
   DECLARE lv_tmp NVARCHAR(30); --Für die Vertauschung

   --Umwandeln der Tabelle in ein Array: 
   la_werte = ARRAY_AGG(:it_table.wert);
 
   --Anzahl der Zeilen ermitteln:
   SELECT COUNT(*) INTO lv_zeilen FROM :it_table;
   
   FOR lv_runde IN 1..:lv_zeilen DO
     FOR lv_zeile IN 2..:lv_zeilen DO
       IF :la_werte[:lv_zeile-1] > :la_werte[:lv_zeile] 
       THEN --Vertauschung: 
          lv_tmp = :la_werte[:lv_zeile-1];
          la_werte[:lv_zeile-1] = :la_werte[:lv_zeile];
          la_werte[:lv_zeile] = :lv_tmp;
       END IF;
     END FOR; --Zeilen
   END FOR; --Runden

   --Umwandlung des sortierten Arrays in eine Tabelle:
   rt_result = UNNEST(:la_werte) AS (wert);
   RETURN :rt_result;
END;
