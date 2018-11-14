-- Listing 2.41.sql
-- Ausführung des Tests



SELECT 
 erwarteter_Preis,
 udf_versandpreis(laenge,
                  breite,
                  hoehe,
                  gewicht,
                  als_paeckchen,
                  ist_online).rv_preis
                     - erwarteter_preis AS abweichung,
  udf_versandpreis(laenge,
                  breite,
                  hoehe,
                  gewicht,
                  als_paeckchen,
                  ist_online).rv_meldung AS meldung              
FROM TEST_VERSANDPREISE
