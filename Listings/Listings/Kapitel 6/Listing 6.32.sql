-- Listing 6.32.sql
-- Umwandlung von ARRAYs in Tabellen mit UNNEST()

DO BEGIN
   DECLARE tiere VARCHAR(10) ARRAY = ARRAY('Hund', 'Katze', 
         'Maus');
   DECLARE farben VARCHAR(10) ARRAY = ARRAY('rot', 'gelb', 
         'blau', 'orange', 'grün', 'violett');

   tabelle = UNNEST(:tiere, :farben)
                  WITH ORDINALITY AS (
                        "Tier",
                        "Farbe",
                        "Nr"
                        );

   SELECT *
   FROM :tabelle;
END;
