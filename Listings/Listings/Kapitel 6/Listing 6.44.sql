-- Listing 6.44.sql
-- Beispiele für das Auslösen von benutzerdefinierten Ausnahmen

--Nur mit Fehlercode und Text:
SIGNAL SQL_ERROR_CODE 10000 SET MESSAGE_TEXT = 'Mein Fehler';

--oder mit definiertem Fehlername und Text:
DECLARE my_error CONDITION FOR SQL_ERROR_CODE 10000;
... 
SIGNAL my_error SET MESSAGE_TEXT = 'Mein Fehler'; 

--oder auch ohne Fehlercode und Text: 
DECLARE my_error CONDITION;
... 
SIGNAL my_error;
