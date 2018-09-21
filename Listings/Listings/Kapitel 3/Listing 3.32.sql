-- Listing 3.32.sql
-- Vergleich mit BETWEEN
 
 
 
--1. Vergleich mit BETWEEN
SELECT *
FROM benutzer
WHERE id BETWEEN 5 AND 10;

--2. Die selbe Abfrage mit Vergleichsprädikaten
SELECT *
FROM benutzer
WHERE id >= 5
   AND id <= 10;
