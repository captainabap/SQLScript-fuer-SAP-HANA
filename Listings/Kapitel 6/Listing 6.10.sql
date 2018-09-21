-- Listing 6.10.sql
-- Beispiel für das zeilenweise Einfügen in eine Tabellenvariable mit INSERT

DO (OUT rt_result TABLE( id INT, 
                         text1 NVARCHAR(50),
                         text2 NVARCHAR(50))=>? )
BEGIN
   DECLARE lv_index INT;

   FOR lv_index IN 1..5
   DO
-- Einfügen aller Spalten an der Position 1
      :rt_result.INSERT((lv_index, 
                         'Einfügen '||lv_index, '')
                         , 1);
   END FOR;
   
   FOR lv_index IN 1..5
   DO
-- Anhängen an die Tabelle, nur für zwei Spalten
      :rt_result.(id, text2).INSERT((lv_index, 
                                     'Anhängen '||lv_index));
   END FOR;
END;
