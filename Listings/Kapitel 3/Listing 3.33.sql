-- Listing 3.33.sql
-- Beispiele für die Nutzung des IN-Prädikat


 
--1. Abfrage für eine Spalte mit mehreren Werten mit OR
SELECT *
FROM benutzer
WHERE vorname = 'Aldo'
   OR vorname = 'Elvin'
   OR vorname = 'Sascha';

--2. Analoge Abfrage mit dem IN-Prädikat
SELECT *
FROM benutzer 
WHERE vorname IN ( 'Aldo', 'Elvin', 'Sascha' );

--3. Nutzung einer Unterabfrage mit dem IN-Prädikat: 
--   Benutzer, denen aktuell keine Aufgabe zugeordnet ist
SELECT *
FROM benutzer
WHERE id NOT IN ( SELECT DISTINCT bearbeiter
                  FROM aufgaben );
