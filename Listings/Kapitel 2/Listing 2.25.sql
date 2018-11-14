-- Listing 2.25.sql
-- Parametrisierung aus der SQL-Konsole



--Aufruf ohne Parameternamen
CALL parameter_test(2, ?, ?, ?);

--Der gleiche Aufruf mit benannten Parametern
CALL parameter_test(iv_projekt=>2, 
                    ot_aufgaben=>?, 
                    ot_status_text=>?, 
                    ot_restaufwand=>?);
