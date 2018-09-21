-- Listing 6.35.sql
-- Test des Sortieralgorithmus mit einfachen Daten

DO BEGIN
   DECLARE lt_testdaten tt_wert;
   DECLARE la_testdaten NVARCHAR(30) ARRAY ;  
   
   la_testdaten = ARRAY('Z', 'Y', 'B', 'A');
   
   lt_testdaten = UNNEST(:la_testdaten) AS ( wert );
   
   SELECT * FROM udf_sort(:lt_testdaten);
END;
