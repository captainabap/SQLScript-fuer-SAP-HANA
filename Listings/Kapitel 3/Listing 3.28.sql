-- Listing 3.28.sql
-- Beispiel für die Position von Bedingungen
 
 
 
SELECT * FROM belege 
   LEFT OUTER JOIN waehrungen 
   ON   belege.waehrung = waehrungen.waehrung
   where waehrungen.waehrung <> 'EUR'; 

SELECT * FROM belege 
   LEFT OUTER JOIN waehrungen 
   ON   belege.waehrung = waehrungen.waehrung
   and  waehrungen.waehrung <> 'EUR';   
