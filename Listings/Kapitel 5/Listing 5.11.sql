-- Listing 5.11.sql
-- Beispiel für die MERGE INTO Anweisung
 
DELETE FROM tabelle_1;
DELETE FROM  tabelle_2;
INSERT INTO tabelle_2 VALUES(1, '', 'Erste Zeile');
INSERT INTO tabelle_2 VALUES(2, '', 'Zweite Zeile');
INSERT INTO tabelle_2 VALUES(3, '', 'Dritte Zeile');
INSERT INTO tabelle_2 VALUES(4, '', 'Vierte Zeile');

MERGE INTO tabelle_1
     USING tabelle_2
     ON (tabelle_1.key1 = tabelle_2.key1)
     WHEN MATCHED THEN 
          UPDATE SET tabelle_1.key1  = tabelle_2.key1,
                     tabelle_1.key2  = 1,
                     tabelle_1.wert1 = 'UPDATE: ' 
                                       || tabelle_1.wert1
     WHEN NOT MATCHED THEN 
          INSERT VALUES( tabelle_2.key1, 
                         1,
                         'INSERT: ' || tabelle_2.wert2);
                         
MERGE INTO tabelle_1
     USING tabelle_2
     ON (tabelle_1.key1 = tabelle_2.key1)
     WHEN MATCHED THEN 
          UPDATE SET tabelle_1.key1  = tabelle_2.key1,
                     tabelle_1.key2  = 1,
                     tabelle_1.wert1 = 'UPDATE: ' 
                                       || tabelle_1.wert1
     WHEN NOT MATCHED THEN 
          INSERT VALUES( tabelle_2.key1, 
                         1,
                         'INSERT: ' || tabelle_2.wert2);

SELECT * FROM tabelle_1;
