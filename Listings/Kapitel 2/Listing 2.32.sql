-- Listing 2.32.sql
-- Rahmen der Funktion UDF_VERSANDPREIS mit Pseudocode



CREATE FUNCTION udf_versandpreis (
   iv_laenge INT,
   iv_breite INT,
   iv_hoehe INT,
   iv_gewicht INT,
   iv_als_paeckchen VARCHAR(1),
   iv_ist_online VARCHAR(1)
   )
RETURNS rv_preis DEC(17,2),
        rv_meldung NVARCHAR(30)
AS
BEGIN
   --Ermitteln der Größenkategorie
   --Ermitteln des Gurtmass
   --Ermitteln der Preisklasse 
   --Ableiten des Preises anhand der Preisklasse
END;
