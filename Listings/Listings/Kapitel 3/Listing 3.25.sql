-- Listing 3.25.sql
-- Cross Join über Farben und Größen
 
 
--Kreuzprodukt mit CROSS JOIN
SELECT *
FROM farben
CROSS JOIN groessen;

--Kreuzprodukt nur mit Komma in der FROM-Klausel
SELECT *
FROM farben,
   groessen;
