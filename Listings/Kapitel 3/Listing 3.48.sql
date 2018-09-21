-- Listing 3.48.sql
-- Beispiele für Unterabfragen
 
 
 
--1. Skalare Unterabfrage
SELECT *
FROM aufgaben
WHERE STATUS = (
      SELECT max(id)
      FROM STATUS );

--2. Spalten-Unterabfrage
SELECT *
FROM aufgaben
WHERE STATUS IN (
      SELECT id
      FROM STATUS
      WHERE is_final = true );

--3. Tabellen-Unterabfrage
SELECT b.vorname || ' ' || b.Nachname AS PL,
   p.titel
FROM (
   SELECT *
   FROM projekte
   WHERE titel LIKE 'F%' ) AS p
INNER JOIN benutzer AS b
   ON p.projektleiter = b.id;
