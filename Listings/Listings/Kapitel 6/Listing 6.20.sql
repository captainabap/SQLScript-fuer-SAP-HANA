-- Listing 6.20.sql
-- Beispiel für verschachtelte IF-Anweisungen

 
CREATE FUNCTION udf_anzeigename(lv_vorname      NVARCHAR(20),
                                lv_nachname     NVARCHAR(20),
                                lv_zwischenname NVARCHAR(20)) 
RETURNS rv_name NVARCHAR(65)
AS BEGIN
   IF lv_vorname IS NOT NULL AND 
      lv_nachname IS NOT NULL AND 
      lv_zwischenname IS NOT NULL 
   THEN
      DECLARE lv_initiale NVARCHAR(1);
      lv_initiale = LEFT(lv_zwischenname,1) ;
      IF lv_initiale<>'' 
      THEN
         rv_name = lv_vorname || ' ' || lv_initiale
                            || '. ' || lv_nachname;
      ELSE
         rv_name = lv_vorname || ' ' || lv_nachname;
      END IF;
   ELSEIF lv_vorname  IS NOT NULL AND 
          lv_nachname IS NOT NULL 
   THEN
      rv_name = lv_vorname || ' ' || lv_nachname;
   ELSEIF lv_nachname IS NOT NULL 
   THEN
      rv_name = lv_nachname;
   ELSEIF lv_vorname IS NOT NULL 
   THEN
      rv_name = lv_vorname;
   ELSE
      rv_name = '';
   END IF;
END;
   
SELECT udf_anzeigename('Jörg','Brandeis','Roland') 
   FROM dummy
UNION SELECT udf_anzeigename('Jörg','Brandeis',NULL)
   FROM dummy
UNION SELECT  udf_anzeigename(NULL,'Brandeis',NULL)
   FROM dummy;

DROP FUNCTION udf_anzeigename;
