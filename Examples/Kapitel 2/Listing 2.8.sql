--Unterschiedliche Typisierung von Tabellen

DO BEGIN
-- Typ einer DB-Tabelle
   DECLARE lt_tab1 aufgaben; 
-- Typ eines Tabellentyps
   DECLARE lt_tab2 id_text; 
-- Im Code mit TABLE definierter Tabellentyp 
   DECLARE lt_tab3 TABLE( id   INT, 
                          col1 NVARCHAR(12) );
   lt_tab1 = SELECT * FROM aufgaben;
   lt_tab2 = SELECT id, titel as text FROM :lt_tab1;
   lt_tab3 = SELECT id, titel as col1 FROM :lt_tab1;
   SELECT * FROM :lt_tab1;
   SELECT * FROM :lt_tab1;
   SELECT * FROM :lt_tab1;
END;