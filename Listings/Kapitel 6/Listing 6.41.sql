-- Listing 6.41.sql
-- Beispiel für Eingabeparameter in dynamischem SQL

CREATE PROCEDURE count_id( IN iv_maxid INT, 
                           OUT ov_count INT )
AS BEGIN
   EXEC 'SELECT COUNT(*) FROM aufgaben WHERE id < ?' 
        INTO ov_count 
        USING :iv_maxid;

-- Alternative mit benannten Parametern
-- EXEC 'SELECT COUNT(*) FROM aufgaben WHERE id < :iv_maxid' 
--      INTO ov_count 
--      USING :iv_maxid;

-- Alternative mit dynamischer Generierung der SQL Anweisung
--   EXEC 'SELECT COUNT(*) FROM aufgaben WHERE id <' 
--       || :iv_maxid 
--      INTO ov_count;
END;

CALL count_id( 10, ?);
