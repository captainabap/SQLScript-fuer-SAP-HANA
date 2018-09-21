-- Listing 9.1.sql
-- Vergabe einer laufenden Nummer für das Feld RECORD für die Sortierung
outtab = SELECT ...          
       LPAD( RANK() OVER (ORDER BY <Sortierung>), 56, '0') 
                                               AS "RECORD",
       SQL__PROCEDURE__SOURCE__RECORD
       FROM :intab ;
