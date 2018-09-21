-- Listing 6.48.sql
-- Fehlerbehandler mit Ergänzung von Datenbankschema und Prozedur im Fehlertext

DECLARE EXIT HANDLER FOR SQLEXCEPTION
   RESIGNAL SET MESSAGE_TEXT = 'Prozedur' 
      || ::CURRENT_OBJECT_SCHEMA 
      || '.' 
      || ::CURRENT_OBJECT_NAME 
      ||::SQL_ERROR_MESSAGE;
