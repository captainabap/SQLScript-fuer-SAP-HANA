-- Listing 2.28.sql
-- Beispiel für eine Tabellen-UDF



CREATE FUNCTION udf_statustexte (iv_sprache VARCHAR(2))
RETURNS TABLE ( id INT,
                status_text VARCHAR(20) )
AS BEGIN
   RETURN SELECT id,
                 status_text
          FROM status_text
          WHERE sprache = :iv_sprache;
END;
