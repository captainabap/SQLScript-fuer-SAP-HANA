-- Listing 3.14.sql
-- Beispiel für die Verwendung von konstanten Werten und Aggregatfunktionen

 
DO BEGIN
--Konstante 1 als Spaltenwert für COUNTER
   lt_tmp = SELECT 1 AS counter,      
               plan_aufwand - ist_aufwand AS restaufwand
            FROM aufgaben
   WHERE STATUS NOT IN (5, 6 );

--Aggregation über die Spalten
   SELECT sum(counter),
      sum(restaufwand)
   FROM :lt_tmp;
END;
