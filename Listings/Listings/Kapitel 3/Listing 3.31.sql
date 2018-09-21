-- Listing 3.31.sql
-- Vergleich mit LIKE und ESCAPE 


 
SELECT table_name
FROM tables
WHERE table_name LIKE 'P$_%' ESCAPE '$'
