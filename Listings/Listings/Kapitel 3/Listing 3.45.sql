-- Listing 3.45.sql
-- Verwendung von UNION und UNION ALL
 
--Abfrage mit UNION: Duplikate werden entfernt
SELECT 'A' AS spalte1,
       'B' AS spalte2
FROM DUMMY
UNION
SELECT 'A' AS spalte1,
       'B' AS spalte2
FROM DUMMY;

--Zweite Abfrage mit UNION ALL ohne Duplikatsentfernung
SELECT 'A' AS spalte1,
       'B' AS spalte2
FROM DUMMY
UNION ALL
SELECT 'A' AS spalte1,
   'B' AS spalte2
FROM DUMMY;
