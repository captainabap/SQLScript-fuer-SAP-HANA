-- Listing 6.38.sql
-- Beispiel für dynamisches SQL mit einer lokalen temporären Tabelle

 
DO BEGIN 
DECLARE lv_statement VARCHAR(1000);
DECLARE cursor lr_tables 
   FOR SELECT table_columns.table_name 
          FROM table_columns 
          INNER JOIN tables 
          ON table_columns.table_Name = tables.table_name 
          and tables.is_user_defined_type = 'FALSE'
          WHERE table_columns.schema_name = 'JBRANDEIS'
           and column_name = 'ID';
--Anlegen der LTT
CREATE LOCAL TEMPORARY TABLE #max_id(table_name NVARCHAR(256)
                                     , max_id INT );    

FOR ls_tables AS lr_tables DO   
--Zusammenbau der INSERT-Anweisung
   lv_statement = 'INSERT INTO  #max_id  SELECT ''' 
               || ls_tables.table_name 
               || ''' AS table_name, max(ID) AS max_id FROM '
               || ls_tables.table_name || ';';
--Ausführung des dynamischen SQLs
EXEC  :lv_statement ;
END FOR;

--Ergebnis aus der LTT abholen
SELECT * FROM #max_id ORDER BY MAX_ID DESC;
END;
