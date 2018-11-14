-- Listing 2.31.sql
-- Gleichzeitige Zuweisung aller Rückgabewerte einer UDF 



DO BEGIN
   DECLARE lv_uhrzeit TIME;
   DECLARE lv_datum DATE;
 
   (lv_uhrzeit, lv_datum) = jetzt();
   
   SELECT lv_datum, lv_uhrzeit FROM DUMMY;
END;
