-- Listing 11.2.sql
-- Einfaches Beispiel für die TRACE-Anweisung

DROP PROCEDURE pr_trace;
CREATE PROCEDURE pr_trace( OUT ot_result  aufgaben)
AS  BEGIN
   lt_aufgaben = SELECT * FROM aufgaben;
 
   ot_result = TRACE(:lt_aufgaben);
END;

DO BEGIN
   DECLARE lv_sql VARCHAR(1000);
   DECLARE lv_table VARCHAR(100);
   CALL pr_trace(?);
   SELECT * FROM SYS.SQLSCRIPT_TRACE;
   SELECT table_name INTO lv_table FROM SYS.SQLSCRIPT_TRACE;
   lv_sql =  'SELECT * FROM ' || lv_table || ';';
   EXECUTE IMMEDIATE  lv_sql;
END;
