-- Listing 3.44.sql
-- Sortierung mit ORDER BY
Vergleich HAVING und WHERE
 
 
 
--1. Sortierung nach Spaltennamen
SELECT *
FROM aufgaben
ORDER BY plan_aufwand,
         ist_aufwand;

--2. Sortierung nach Spaltennummern
SELECT *
FROM aufgaben
ORDER BY 7,
         8;

--3. Sortierung nach einem Operatorausdruck 
SELECT id,
   titel
FROM aufgaben
ORDER BY plan_aufwand - ist_aufwand DESC;
