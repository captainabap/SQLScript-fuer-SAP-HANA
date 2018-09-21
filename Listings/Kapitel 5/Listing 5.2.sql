-- Listing 5.2.sql
-- Beispiel für das Einfügen mit Spaltenreihenfolge

 
INSERT INTO tabelle_1 (key2, wert1) 
       VALUES ( 2, 'Defaultwert');
INSERT INTO tabelle_1 (wert1, key1, key2) 
       VALUES ('Vertauschte Spalten', 2, 3);
