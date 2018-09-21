-- Listing 6.24.sql
-- Beispiel einer FOR-Schleife 

 
DO BEGIN
   DECLARE lv_sum INT = 0;
   DECLARE lv_indx INT;
   FOR lv_indx IN 1..10 DO 
      DECLARE lv_tmp INT = lv_sum;
      lv_tmp = :lv_tmp + 10;
      lv_sum = lv_tmp;
   END FOR;
   
   SELECT :lv_indx, :lv_sum  FROM dummy;
END;
