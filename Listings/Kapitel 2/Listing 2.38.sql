-- Listing 2.38.sql
-- Preisermittlung anhand der Preisklasse und dem Online-Flag


CREATE FUNCTION udf_preis ( iv_preisklasse VARCHAR(3),
                            iv_ist_online VARCHAR(1)   )
RETURNS rv_preis DEC(17, 2)
AS BEGIN
   SELECT CASE :iv_ist_online
         WHEN 'X' THEN CASE :iv_preisklasse
                  WHEN 'PN1' THEN 3.89
                  WHEN 'PN2' THEN 4.39
                  WHEN 'PT1' THEN 4.99
                  WHEN 'PT2' THEN 5.99
                  WHEN 'PT3' THEN 8.49
                  WHEN 'PT4' THEN 16.49
                  ELSE 2
                  END
         ELSE --Filiale
            CASE :iv_preisklasse
               WHEN 'PN1' THEN 4
               WHEN 'PN2' THEN 4.5
               WHEN 'PT1' THEN 6.99
               WHEN 'PT2' THEN 6.99
               WHEN 'PT3' THEN 9.49
               WHEN 'PT4' THEN 16.49
               ELSE 2
               END
         END
   INTO rv_preis
   FROM DUMMY;
END;
