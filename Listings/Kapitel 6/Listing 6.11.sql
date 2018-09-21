-- Listing 6.11.sql
-- Tabellenweises Einfügen mit der INSERT Operation

DO (OUT ot_result TABLE( id INT, 
                         text1 NVARCHAR(50),
                         text2 NVARCHAR(50))=>? )
BEGIN
   DECLARE lv_index INT;
   DECLARE lt_tmp TABLE (spalte1 INT,
   	                  spalte2 NVARCHAR(50) );

-- Tabelle LT_TMP zeilenweise aufbauen
   :lt_tmp.INSERT((1, 'TMP_1'));
   :lt_tmp.INSERT((2, 'TMP_2'));
   
-- Tabelle RT_RESULT zeilenweise aufbauen   
   :ot_result.INSERT((1, 'Erster Datensatz ', 'A'));
   :ot_result.INSERT((2, 'Zweiter Datensatz', 'B'));
   :ot_result.INSERT((3, 'Dritter Datensatz', 'C'));

-- Tabelle LT_TMP in RT_RESULT an Position 2 einfügen
   :ot_result.(id, text1).INSERT(:lt_tmp, 2);
   
END;
