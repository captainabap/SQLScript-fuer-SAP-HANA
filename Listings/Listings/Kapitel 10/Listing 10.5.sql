-- Listing 10.5.sql
-- Beispiel für das Zerlegen einer Abfrage in mehrere Schritte
-- Ursprüngliche SELECT-Anweisung
SELECT projekt,
       projekte.titel,
       SUM(aufgaben.plan_aufwand) AS plan_aufwand,
       SUM(aufgaben.ist_aufwand) AS ist_aufwand,
       ROUND(SUM(aufgaben.ist_aufwand)
            /SUM(aufgaben.plan_aufwand)*100,0)
          || '%' AS perc,
       projekte.aufwandsschaetzung
FROM   aufgaben
       LEFT OUTER JOIN projekte 
       ON projekte.id=aufgaben.projekt 
WHERE  aufgaben.status IN (SELECT id 
                           FROM status 
                           WHERE is_final = true)
GROUP  BY projekt,
       projekte.titel,
       projekte.aufwandsschaetzung
ORDER  BY ROUND(SUM(aufgaben.ist_aufwand)
               /SUM(aufgaben.plan_aufwand)*100,0);
               
-- Zerlegt in Schritte:
DO BEGIN
-- Eingangsprojektion STATUS
   lt_status_in = 
      SELECT id 
         FROM status 
         WHERE is_final = true;
         
-- Eingangsprojektion AUFGABEN
   lt_aufgaben_in = 
       SELECT projekt,
              plan_aufwand,
              ist_aufwand
       FROM   aufgaben
       WHERE  status in (SELECT * FROM :lt_status_in);

-- Aggregation der Aufgaben auf Projekte
   lt_aufgaben_aggr = 
       SELECT projekt,
              SUM(plan_aufwand) AS plan_aufwand,
              SUM(ist_aufwand)  AS ist_aufwand
       FROM   :lt_aufgaben_in
       GROUP  BY projekt;
       
-- Nachberechnung AUFGABEN       
   lt_aufgaben_calc = 
       SELECT *,
              ROUND(ist_aufwand/plan_aufwand*100) as perc
       FROM   :lt_aufgaben_aggr;

-- Eingangsprojektion PROJEKTE       
   lt_projekte_in = 
       SELECT id,
              titel,
              aufwandsschaetzung
       FROM   projekte; 

-- JOIN-Schritt       
   lt_projekte_aufgaben = 
      SELECT aufgaben.*,
             projekte.*
      FROM   :lt_aufgaben_calc AS aufgaben
             LEFT OUTER JOIN :lt_projekte_in as projekte 
             ON aufgaben.projekt = projekte.id
      ORDER  BY aufgaben.perc;

-- Ausgangsprojektion
   SELECT projekt,
          titel,
          plan_aufwand,
          ist_aufwand,
          perc || '%' as perc,
          aufwandsschaetzung
   FROM :lt_projekte_aufgaben;
END;
