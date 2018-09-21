-- Listing 5.9.sql
-- Beispiel für UPSERT aus Unterabfrage
 
UPSERT tabelle_1 SELECT key1+10, 
                        key2,
                        'Eingefügt aus Unterabfrage'
                 FROM tabelle_1;
                 
UPSERT tabelle_1 (key1, key2, wert1)
                 SELECT key1+10, 
                        key2,
                        'Geändert durch Unterabfrage'
                 FROM tabelle_1
                 WHERE key2 = 2;
