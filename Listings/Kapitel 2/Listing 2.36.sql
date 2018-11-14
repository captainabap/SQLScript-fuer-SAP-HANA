-- Listing 2.36.sql
-- Funktion für die Berechnung des Gurtmaßes


CREATE FUNCTION udf_gurtmass ( iv_laenge INT,
                               iv_breite INT,
                               iv_hoehe INT )
RETURNS rv_result INT
AS
BEGIN
   rv_result = :iv_laenge  
                + (2 * :iv_breite) 
                + (2 * :iv_hoehe);
END;
