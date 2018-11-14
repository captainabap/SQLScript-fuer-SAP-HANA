-- Listing 2.37.sql
-- Ableitung der Preisklasse und der Meldungen



CREATE PROCEDURE pr_preisklasse (
   iv_groessenkategorie INT,
   iv_gewicht INT,
   iv_gurtmass INT,
   iv_ist_paeckchen VARCHAR(1),
   OUT ov_preisklasse VARCHAR(3),
   OUT ov_meldung NVARCHAR(30)
   ) READS SQL DATA
AS
BEGIN
   SELECT CASE 
         WHEN iv_gurtmass > 300
            THEN 'PT4'
         WHEN iv_groessenkategorie <= 1
            AND iv_gewicht <= 1000
            AND iv_ist_paeckchen = 'X'
            THEN 'PN1'
         WHEN iv_groessenkategorie <= 2
            AND iv_gewicht <= 2000
            AND iv_ist_paeckchen = 'X'
            THEN 'PN2'
         WHEN iv_groessenkategorie <= 2
            AND iv_gewicht <= 2000
            THEN 'PT1'
         WHEN iv_groessenkategorie <= 3
            AND iv_gewicht <= 5000
            THEN 'PT2'
         WHEN iv_groessenkategorie <= 3
            AND iv_gewicht <= 10000
            THEN 'PT3'
         WHEN iv_groessenkategorie <= 3
            AND iv_gewicht <= 31500
            THEN 'PT4'
         ELSE 'NA'
         END
   INTO ov_preisklasse
   FROM DUMMY;

   SELECT CASE 
         WHEN iv_groessenkategorie = 4
            THEN 'Abmessungen zu groß'
         WHEN iv_gewicht > 31500
            THEN 'Gewicht zu hoch'
         WHEN iv_ist_paeckchen = 'X'
            AND :ov_preisklasse IN ('PT1','PT2','PT3','PT4')
            THEN 'Nicht als Päckchen möglich!'
         ELSE ''
         END
   INTO ov_meldung
   FROM DUMMY;
   
   IF ov_meldung <> ''
      THEN 
         ov_preisklasse = 'NA';
   END IF;
END;
