-- Listing 3.38.sql
-- SELECT-Anweisung mit WITH-Klausel


 
--Zunächst wird eine benannte Abfrage erstellt
WITH zu_pruefende_aufgaben AS (
   SELECT a.id,
      b.vorname || ' ' || b.nachname AS bearbeiter,
      a.titel,
      a.faelligkeit,
      a.STATUS,
      a.plan_aufwand,
      a.ist_aufwand
   FROM aufgaben AS a
   INNER JOIN benutzer AS b
      ON a.bearbeiter = b.id
   WHERE ( a.STATUS NOT IN ( 5, 6 ) ) )

--Diese benannte Abfrage wird dann verwendet   
SELECT to_nvarchar('Überfällig') AS grund,
       *
FROM zu_pruefende_aufgaben
WHERE faelligkeit < to_date('2017-12-01')
UNION ALL
SELECT to_nvarchar('Aufwandsschätzung prüfen') AS grund,
       *
FROM zu_pruefende_aufgaben
WHERE plan_aufwand <= ist_aufwand * 1.1;
