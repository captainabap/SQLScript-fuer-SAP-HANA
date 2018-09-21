-- Listing 11.4.sql
-- Einfache SQL-Abfrage für die Performanceanalyse
SELECT a.id AS aufgabe, 
       a.titel,
       b.vorname,
       b.nachname,
       b.email,
       t.team_text 
  FROM aufgaben AS a
  LEFT OUTER JOIN benutzer AS b
  ON a.bearbeiter = b.id
  LEFT OUTER JOIN team_text AS t
  ON b.team = t.id;
