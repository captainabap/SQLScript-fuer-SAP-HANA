-- Listing 2.33.sql
-- Ermittlung des Versandpreis per UDF



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
   DECLARE lv_groessenkategorie INT;
   DECLARE lv_preisklasse VARCHAR(3);
   DECLARE lv_gurtmass INT;
   
   --Ermitteln der Größenkategorie
   lv_groessenkategorie = udf_groessenkategorie(:iv_laenge,
                                                :iv_breite, 
                                                :iv_hoehe);

   --Ermitteln des Gurtmass
   lv_gurtmass = udf_gurtmass(:iv_laenge, 
                              :iv_breite, 
                              :iv_hoehe);

  --Ermitteln der Preisklasse
   call pr_preisklasse(:lv_groessenkategorie, 
                       :iv_gewicht, 
                       :lv_gurtmass,
                       :iv_als_paeckchen,
                       lv_preisklasse,
                       rv_meldung);             

  --Ableiten des Preises anhand der Preisklasse
   rv_preis = udf_preis(:lv_preisklasse, 
                        :iv_ist_online);
END;  
