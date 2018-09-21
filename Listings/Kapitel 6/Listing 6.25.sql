-- Listing 6.25.sql
-- Beispiel für eine WHILE-Schleife

 
CREATE FUNCTION udf_fakultaet( IN iv_value INT)
RETURNS rv_result INT 
AS BEGIN
   DECLARE lv_counter INT = 1;
   rv_result = 1;
   WHILE lv_counter <= iv_value DO
      rv_result = rv_result * lv_counter;
      lv_counter = lv_counter + 1;
   END WHILE;
END;
 
SELECT udf_fakultaet( 10 ) FROM dummy;

DROP FUNCTION udf_fakultaet;
