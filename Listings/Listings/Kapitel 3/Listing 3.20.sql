-- Listing 3.20.sql
-- Vergleich zwischen COUNT als Aggregatausdruck und als Window Function 


 
--Aggregatfunktion COUNT
SELECT status,
   COUNT(*) AS zaehler
FROM aufgaben
GROUP BY status
ORDER BY status;

--Window Function COUNT
SELECT id,
   status,
   COUNT(*) OVER (PARTITION BY status) AS zaehler
FROM aufgaben
ORDER BY id;
