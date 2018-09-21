-- Listing 6.47.sql
-- Weitergabe von Fehlern mit RESIGNAL

CREATE PROCEDURE demo_resignal
AS BEGIN
   DECLARE EXIT HANDLER FOR SQLEXCEPTION
   BEGIN --Block für die Fehlerbehandlung
      IF ::sql_error_code > 219 --Die könnten interessieren
      THEN 
         CALL write_error_log(::sql_error_code,
                              ::sql_error_message);
      ELSE
         RESIGNAL;--Bei den Fehlern besser abbrechen
      END IF;
   END;--Ende der Fehlerbehandlung
     
     ...
END;
