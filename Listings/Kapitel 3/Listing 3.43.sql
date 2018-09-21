-- Listing 3.43.sql
-- Aggregation mit GROUP BY- und HAVING-Klausel



SELECT bearbeiter, 
       avg(plan_aufwand)
FROM aufgaben
GROUP BY bearbeiter
HAVING count(*) > 5;
