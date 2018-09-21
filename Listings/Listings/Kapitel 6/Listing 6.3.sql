-- Listing 6.3.sql
-- Beispiel für die Zuweisung von Werten zu lokalen skalaren Variablen 

CREATE FUNCTION udf_statistik 
RETURNS rv_projekte INT, 
        rv_bearbeiter INT AS 
BEGIN
   --Zuweisung von Variablen durch eine SELECT-Anweisung
   SELECT
      COUNT( DISTINCT projekt),
      COUNT( DISTINCT bearbeiter) 
      INTO rv_projekte,
           rv_bearbeiter 
   FROM
      aufgaben;
END;

DO BEGIN
   DECLARE lv_projekte INTEGER;
   DECLARE lv_bearbeiter INTEGER;
   DECLARE lv_div DEC;
   
--Zuweisung mehrerer Variablen durch skalare UDF
   (lv_projekte, lv_bearbeiter) = udf_statistik( );

--Zuweisung durch einen Ausdruck
   lv_div = :lv_bearbeiter / :lv_projekte;
   
   SELECT
      lv_projekte AS projekte,
      lv_bearbeiter AS bearbeiter,
      lv_div AS bearbeiter_pro_projekt 
   FROM
      dummy;
   END ;
DROP FUNCTION udf_statistik;
