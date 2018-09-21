-- Listing 6.45.sql
-- Beispiele für die Fehlerbehandlung von SQL-Fehlern und benutzerdefinierten Fehlern

CREATE PROCEDURE test_fehlerbehandlung( 
  IN iv_aktion VARCHAR(10)) 
AS BEGIN
   /* Deklarationen*/
   DECLARE lv_tmp INT;
   DECLARE fehler1 CONDITION ;
   DECLARE fehler2 CONDITION FOR SQL_ERROR_CODE 10001 ;
   DECLARE division_durch_0 CONDITION FOR SQL_ERROR_CODE 304;
    
   /* Fehlerbehandler*/
   DECLARE EXIT HANDLER FOR fehler1 
       write_error_log( ::sql_error_code, 
                        ::sql_error_message );
   DECLARE EXIT HANDLER FOR fehler2 
      write_error_log( ::sql_error_code, 'Fehler2' );
   DECLARE EXIT HANDLER FOR division_durch_0 
      write_error_log( ::sql_error_code, 
                   'SQL-Fehler: ' || ::sql_error_message );

   /* Anweisungen*/
   IF iv_aktion='F1' THEN
      SIGNAL fehler1 ;
    ELSEIF iv_aktion='F2' THEN
      SIGNAL fehler2;
    ELSEIF iv_aktion='D0' THEN
      SELECT  1/0 FROM dummy ;
    END IF;
END;

CALL test_fehlerbehandlung('F1');
CALL test_fehlerbehandlung('F2');
CALL test_fehlerbehandlung('D0');
CALL show_error_log();
DROP PROCEDURE test_fehlerbehandlung;
