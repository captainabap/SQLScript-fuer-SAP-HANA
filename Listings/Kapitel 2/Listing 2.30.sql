-- Listing 2.30.sql
-- UDF mit mehreren Rückgabewerten



CREATE FUNCTION jetzt
RETURNS uhrzeit TIME,
        datum DATE
AS BEGIN
  datum       = CURRENT_DATE;
  uhrzeit     = CURRENT_TIME;
END;

SELECT jetzt().datum,
       jetzt().uhrzeit
       FROM DUMMY; 
