-- Listing 6.21.sql
-- Funktion UDF_SORT_2 zur Sortierung von zwei Zahlen

CREATE FUNCTION udf_sort_2(iv_wert1 INT,
                           iv_wert2 INT )
RETURNS rv_klein  INT,
        rv_gross  INT 
AS BEGIN
   IF iv_wert1 >= iv_wert2 THEN
      rv_klein = iv_wert2;
      rv_gross = iv_wert1;
   ELSE
      rv_klein = iv_wert1;
      rv_gross = iv_wert2;
   END IF;
END;
