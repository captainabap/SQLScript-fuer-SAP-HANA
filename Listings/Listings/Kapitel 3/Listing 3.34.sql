-- Listing 3.34.sql
-- Beispiele für das EXISTS-Prädikat
 
 
 
--1. Abfrage mit EXISTS-Prädikat
--   Alle Benutzer mit mindestens einer Aufgabe
SELECT *
FROM benutzer
WHERE EXISTS (
      SELECT bearbeiter
      FROM aufgaben
      WHERE aufgaben.bearbeiter = benutzer.id );

--2. Abfrage mit NOT EXISTS
--   Aufgaben, deren Status nicht in der Statustabelle steht
SELECT *
FROM aufgaben
WHERE NOT EXISTS (
      SELECT id
      FROM STATUS
      WHERE STATUS.id = aufgaben.STATUS );

--3. Analoge Abfrage mit NOT IN
SELECT *
FROM aufgaben
WHERE STATUS NOT IN (
      SELECT id
      FROM STATUS );
