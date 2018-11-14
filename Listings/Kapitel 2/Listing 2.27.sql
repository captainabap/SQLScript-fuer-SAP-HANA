-- Listing 2.27.sql
-- Beispiel für eine skalare UDF





















CREATE FUNCTION udf_name ( iv_vorname NVARCHAR(20),
                           iv_nachname NVARCHAR(20) )
RETURNS rv_name NVARCHAR(42)
AS BEGIN
   rv_name = :iv_nachname || ', ' || :iv_vorname;
END;
