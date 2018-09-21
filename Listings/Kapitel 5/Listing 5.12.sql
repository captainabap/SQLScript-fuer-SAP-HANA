-- Listing 5.12.sql
-- MERGE INTO mit lokaler Tabellenvariable
 
DO BEGIN
   lt_tmp = select * from tabelle_2;
   MERGE INTO tabelle_1
        USING :lt_tmp as t2
        ON (tabelle_1.key1 = t2.key1) 
     WHEN MATCHED THEN 
          UPDATE SET tabelle_1.key1  = t2.key1,
                     tabelle_1.key2  = 1,
                     tabelle_1.wert1 = 'UPDATE: ' 
                                       || tabelle_1.wert1
     WHEN NOT MATCHED THEN 
          INSERT VALUES( t2.key1, 
                         1,
                         'INSERT: ' || t2.wert2);
END; 
