-- Listing 3.22.sql
-- ORDER BY-Klausel in Window Functions



SELECT id,
   status,
   COUNT(*) OVER (PARTITION BY status ORDER BY id) AS zaehler
FROM aufgaben
ORDER BY status;
