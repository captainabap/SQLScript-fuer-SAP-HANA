--Ausdrücke in Feldlisten

SELECT 
--     Feldname als Ausdruck
       id,
--     Verkettungsoperation als Ausdruck
       vorname || ' ' || nachname AS name,
--     CASE-Ausdruck..
       CASE
--                        ..mit Funktionsaufruf als Ausdruck
          WHEN geschlecht = 'F' THEN NCHAR('9792')
          WHEN geschlecht = 'M' THEN NCHAR('9794')
          ELSE '' 
       END AS MW,
--     Funktionsaufruf als Ausdruck  
       COALESCE(team, 0) as team
   FROM benutzer;
