-- Listing 2.34.sql
-- Ermittlung der Größenkategorie für die Pakete



CREATE FUNCTION udf_groessenkategorie (
   iv_laenge INT,
   iv_breite INT,
   iv_hoehe INT )
RETURNS rv_result INT
AS
BEGIN
   SELECT CASE 
         WHEN :iv_laenge <= 30
            AND :iv_breite <= 30
            AND :iv_hoehe <= 15
            THEN 1
         WHEN :iv_laenge <= 60
            AND :iv_breite <= 30
            AND :iv_hoehe <= 15
            THEN 2
         WHEN :iv_laenge <= 120
            AND :iv_breite <= 60
            AND :iv_hoehe <= 60
            THEN 3
         ELSE 4
         END
   INTO rv_result
   FROM DUMMY;
END;
