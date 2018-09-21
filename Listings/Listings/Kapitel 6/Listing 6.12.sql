-- Listing 6.12.sql
-- Zeilenweises Aktualisieren einer Tabellenvariablen mit UPDATE und indexbasiertem Zugriff

DO (OUT ot_result TABLE(text NVARCHAR(100))=>?) 
BEGIN 
   DECLARE indx integer;

-- Zeilenweise Aufbau der Tabelle
   :ot_result.INSERT(('Einfügen 1'), 1);
   :ot_result.INSERT(('Einfügen 2'), 2);
   :ot_result.INSERT(('Einfügen 3'), 3);
   
-- UPDATE der Zeilen    
   :ot_result.UPDATE(('Aktualisieren 2'),2);
   :ot_result.UPDATE(('Aktualisieren 4'),4);
   
-- Update mit Indexbasiertem Zugriff   
   ot_result[6] = ('Aktualisieren 6');
END;
