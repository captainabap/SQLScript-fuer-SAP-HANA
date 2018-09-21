-- Listing 5.3.sql
-- Beispiel für eine INSERT-Anweisung mit mehreren Datensätzen
 
INSERT INTO tabelle_2 
       SELECT key1 + key2 * 100, 
              wert1, 
              'Einfügen aus einer Abfrage'
       FROM tabelle_1;
