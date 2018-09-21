-- Listing 9.8.sql
-- Fehlerermittlung aus der OUTTAB

outtab = SELECT it.plant,
                pplant.plantcat
                FROM :intab AS it
                LEFT OUTER JOIN "/BI0/PPLANT" AS pplant
                ON it.plant = pplant.plant;

ERRORTAB = SELECT 'Fehler' AS error_text,
                  SQL__PROCEDURE__SOURCE__RECORD
                  FROM :outtab
                  WHERE plant = ' ' --Fehler aus INTAB
                     OR plantcat IS NULL  --Join erfolglos
