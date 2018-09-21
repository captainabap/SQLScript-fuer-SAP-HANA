-- Listing 5.8.sql
-- Beispiel für das Einfügen und Aktualisieren über den Primärschlüssel

 
DELETE FROM tabelle_1;
DELETE FROM tabelle_2;
--Einfügen einzelner Sätze 
UPSERT tabelle_1 VALUES(1, 1, 'Eingefügt mit UPSERT') 
       WITH PRIMARY KEY;
UPSERT tabelle_1 VALUES(1, 2, 'Eingefügt mit UPSERT') 
       WITH PRIMARY KEY;
UPSERT tabelle_1 VALUES(1, 3, 'Eingefügt mit UPSERT') 
       WITH PRIMARY KEY;
--Aktualisieren eines Datensatzes über den Primärschlüssel
UPSERT tabelle_1 VALUES(1, 2, 'Geändert mit UPSERT') 
       WITH PRIMARY KEY;

SELECT * FROM tabelle_1;
