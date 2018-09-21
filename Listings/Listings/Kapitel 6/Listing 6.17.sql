-- Listing 6.17.sql
-- Beispiel für eine globale temporäre Tabelle

CREATE GLOBAL TEMPORARY TABLE test_gtt (id INT, 
                                        text NVARCHAR(40));
INSERT INTO test_gtt ( SELECT id,  titel FROM aufgaben);
SELECT * FROM test_gtt;
