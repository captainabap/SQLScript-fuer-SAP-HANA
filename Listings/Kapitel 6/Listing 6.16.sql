-- Listing 6.16.sql
-- Verwendung von Sessionvariablen
 
DO BEGIN
SET 'TESTVARIABLE' = 'TESTWERT';
SELECT session_context( 'TESTVARIABLE' ) FROM dummy;
END;
