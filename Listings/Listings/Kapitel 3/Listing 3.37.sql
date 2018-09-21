-- Listing 3.37.sql
-- Unscharfe Suche mit dem CONTAINS-Prädikat
 
--1. Unscharfe Suche nach einer Zeichenkette
SELECT *
FROM benutzer
WHERE CONTAINS ( ( vorname, nachname,  email ),
                 'andy',
                 FUZZY(0.3) );

--2. Unscharfe Suche nach mehreren Zeichenketten
SELECT *
FROM benutzer
WHERE CONTAINS ( *,
                 'andy OR anette',
                 FUZZY(0.5)  );
