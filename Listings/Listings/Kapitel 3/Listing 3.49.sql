-- Listing 3.49.sql
-- Verwendung von Spalten- und Tabellen-Alias



SELECT aufgaben.id AS aufgabe_id,
   aufgaben.titel AS aufgabe_titel,
   bearbeiter.id AS bearbeiter_id, 
   bearbeiter.vorname 
   || ' ' 
   || bearbeiter.nachname AS bearbeiter_name,
   projektleiter.id AS projektleiter_id,
   projektleiter.vorname 
   || ' ' 
   || projektleiter.nachname AS projektleiter_name
FROM aufgaben
INNER JOIN projekte
   ON aufgaben.projekt = projekte.id
INNER JOIN benutzer AS projektleiter
   ON projekte.projektleiter = projektleiter.id
INNER JOIN benutzer AS bearbeiter
   ON aufgaben.bearbeiter = bearbeiter.id;
