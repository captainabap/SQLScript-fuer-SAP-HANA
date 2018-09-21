-- Listing 3.23.sql
-- Beispiel mit der Window Function LEAD

 
SELECT id,
   projekt,
   LEAD(id) OVER ( PARTITION BY projekt 
                   ORDER BY id ) AS naechste_aufgabe
FROM aufgaben
ORDER BY id;
