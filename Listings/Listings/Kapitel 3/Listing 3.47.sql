-- Listing 3.47.sql
-- Subtraktion von Mengen mit EXCEPT und NOT EXISTS



--Abfrage aller Bearbeiter von Aufgaben, ohne Projektleiter
--Zunächst mit EXCEPT
SELECT bearbeiter
FROM aufgaben
EXCEPT
SELECT projektleiter
FROM projekte;

--Und die gleiche Abfrage mit NOT EXISTS
SELECT DISTINCT bearbeiter
FROM aufgaben AS a
WHERE NOT EXISTS (
      SELECT id
      FROM projekte AS p
      WHERE p.projektleiter = a.bearbeiter );
