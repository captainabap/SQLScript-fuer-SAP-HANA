-- Listing 6.46.sql
-- Beispiel für die Fehlerbehandlung bei Prozeduraufrufen

 
CREATE PROCEDURE fehler_ausloesen
AS
BEGIN
--Deklaration
   DECLARE mein_fehler CONDITION FOR SQL_ERROR_CODE 10001;
--Anweisungen
   SIGNAL mein_fehler;
END;

CREATE PROCEDURE fehler_fangen
AS
BEGIN
--Deklaration
   DECLARE mein_Fehler CONDITION FOR SQL_ERROR_CODE 10001;   
--Fehlerbehandlung   
   DECLARE EXIT HANDLER FOR mein_fehler 
      CALL write_error_log(::SQL_ERROR_CODE, 'Hab ihn!');
--Anweisungen
   CALL fehler_ausloesen();
END;

CALL fehler_fangen;
CALL show_error_log();

DROP PROCEDURE fehler_ausloesen;
DROP PROCEDURE fehler_fangen;
