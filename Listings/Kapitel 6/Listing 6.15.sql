-- Listing 6.15.sql
-- Suche in Tabellen mit dem SEARCH Operator

DO (OUT ot_result TABLE( id INT, 
                         status INT,
                         bearbeiter INT,
                         titel NVARCHAR(50))=>? )
BEGIN
   DECLARE lv_index INT = 0; 
   
   ot_result = SELECT id, 
          status,
          bearbeiter,
          titel
          FROM aufgaben
          ORDER BY id;
         
-- Suche mit SEARCH          
    lv_index = :ot_result.SEARCH((status, bearbeiter), 
                                 (3,3));
    
    :ot_result.DELETE(lv_index);
    
-- Direkte Verwendung des SEARCH Operators im DELETE Operator
    :ot_result.DELETE(:ot_result.SEARCH((status, bearbeiter),   
                                        (3,3)));
   
END;
