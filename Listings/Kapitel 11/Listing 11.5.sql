-- Listing 11.5.sql
-- Beispiel für die Verwendung der EXPLAIN PLAN-Anweisung

EXPLAIN PLAN FOR
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

SELECT * FROM explain_plan_table;
DELETE FROM explain_plan_table;
