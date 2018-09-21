-- Listing 6.23.sql
-- Anonymer Block zum Testen der Funktion UDF_SORT_3

DO (OUT ov_klein  INT=>?, 
    OUT ov_mittel INT=>?, 
    OUT ov_gross  INT=>?)
BEGIN
   (ov_klein, ov_mittel, ov_gross) = udf_sort_3(1,11,9);
END;  
