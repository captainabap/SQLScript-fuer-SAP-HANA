-- Listing 6.22.sql
-- Funktion UDF_SORT_3 für die Sortierung von drei Zahlen

CREATE FUNCTION udf_sort_3(iv_wert1 INT,
                           iv_wert2 INT,
                           iv_wert3 INT )
RETURNS rv_klein  INT,
        rv_mittel INT,
        rv_gross  INT
AS BEGIN
   --Anfangszuweisung (wahrscheinlich falsch)
   rv_klein  = :iv_wert1;
   rv_mittel = :iv_wert2;
   rv_gross  = :iv_wert3;
   
   --Tauschen, bis die Sortierung richtig ist
   (rv_klein, rv_mittel) = udf_sort_2(rv_klein, rv_mittel);
   (rv_klein, rv_gross)  = udf_sort_2(rv_klein, rv_gross);
   (rv_mittel, rv_gross) = udf_sort_2(rv_mittel, rv_gross);
END;
