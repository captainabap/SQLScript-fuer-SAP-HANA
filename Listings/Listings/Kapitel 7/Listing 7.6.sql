-- Listing 7.6.sql
-- Anlegen einer neuen Tabelle auf Basis einer SQL-Abfrage
 
CREATE TABLE tmp_aufgaben AS (    
    SELECT a.id, 
           b.vorname, 
           b.nachname, 
           t.team_text
           FROM aufgaben AS a
           LEFT OUTER JOIN benutzer AS b
           ON a.bearbeiter = b.id
           LEFT OUTER JOIN team_text AS t
           ON b.team = t.id 
           ) 
           WITH DATA;
