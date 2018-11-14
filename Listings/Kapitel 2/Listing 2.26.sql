-- Listing 2.26.sql
-- Syntax der CREATE FUNCTION Anweisung



CREATE FUNCTION <Funktionsname> 
[(<IN-Parameterliste>)]
RETURNS <OUT-Parameterdefinition>
[LANGUAGE SQLSCRIPT] 
[SQL SECURITY {DEFINER|INVOKER} ] 
[DEFAULT SCHEMA Defaultschema] 
[DETERMINISTIC] 
AS 
BEGIN 
<Quellcode> 
END
