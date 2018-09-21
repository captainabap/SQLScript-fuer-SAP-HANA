-- Listing 3.39.sql
-- Verwendung von Tabellenvariablen statt der WITH-Klausel



DO BEGIN
--Definition der Tabellenvariablen über den SELECT
    lt_zu_pruefende_aufgaben = SELECT a.id, 
                b.vorname || ' ' || b.nachname AS bearbeiter, 
                a.titel, 
                a.faelligkeit, 
                a.STATUS, 
                a.plan_aufwand, 
                a.ist_aufwand
            FROM aufgaben AS a
                INNER JOIN benutzer AS b
                ON a.bearbeiter = b.id
            WHERE (a.STATUS NOT IN (5, 6));

--Verwendung der Tabellenvariablen in den beiden Abfragen            
    SELECT to_nvarchar('Überfällig') AS grund, 
            *
        FROM :lt_zu_pruefende_aufgaben
        WHERE faelligkeit < to_date('2017-12-01')
    UNION ALL
    SELECT to_nvarchar('Aufwandsschätzung prüfen') AS grund, 
            *
        FROM :lt_zu_pruefende_aufgaben
        WHERE plan_aufwand <= ist_aufwand * 1.1;
END;
