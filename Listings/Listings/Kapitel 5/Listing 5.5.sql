-- Listing 5.5.sql
-- INSERT mit Abfrage auf eine lokale Tabellenvariable und veränderter Spaltenreihenfolge


DO BEGIN
   lt_tmp = SELECT key1 + 10 as key1,
            key2,
            'Kopie: '|| wert1 as wert1
          FROM tabelle_1;
          
   INSERT INTO tabelle_1 
          (wert1, key1, key2)
          SELECT wert1, 
                 key1, 
                 key2 
          FROM :lt_tmp;
END;
