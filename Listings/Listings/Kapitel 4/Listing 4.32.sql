-- Listing 4.32.sql
-- Auslagerung der Datumsberechnung in eine Funktion

SELECT *
FROM bw_daten
WHERE calday <= TO_DATS(UDF_ADD_DAYS_TO_LAST_SUNDAY(0))
  AND calday >= TO_DATS(UDF_ADD_DAYS_TO_LAST_SUNDAY(27));
