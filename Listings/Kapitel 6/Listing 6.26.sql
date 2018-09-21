-- Listing 6.26.sql
-- Übungsbeispiel GGT Berechnen

 
CREATE FUNCTION udf_ggt(iv_zahl1 INT,
                        iv_zahl2 INT )
RETURNS rv_ggt INT
AS BEGIN 
   DECLARE lv_zahl1 INT DEFAULT :iv_zahl1;
   DECLARE lv_zahl2 INT DEFAULT :iv_zahl2;
   DECLARE lv_cnt INT DEFAULT 0;

   WHILE lv_zahl1 <> lv_zahl2 DO
   --FOR lv_cnt IN 0..100 DO
      DECLARE lv_lower INT DEFAULT 0;
      DECLARE lv_higher INT DEFAULT 0;
      --IF lv_zahl1 = lv_zahl2 THEN BREAK;
      --END IF;
   
      (lv_lower, lv_higher) = udf_sort_2(:lv_zahl1, 
                                         :lv_zahl2);
      lv_zahl1 = :lv_higher - :lv_lower;
      lv_zahl2 = :lv_lower;
   END WHILE;
   --END FOR;
   rv_ggt = :lv_zahl1;
END;
