--Definition einer Prozedur mit Standardwerten
CREATE PROCEDURE standardwerte (
   IN iv_max_id INT DEFAULT 10,
   it_table aufgaben DEFAULT aufgaben )
AS
BEGIN
   SELECT id,
      titel
   FROM :it_table
   WHERE id <= :iv_max_id;
END;

--Aufruf der Prozedur ohne Parameter
call standardwerte();

--Aufräumen
DROP PROCEDURE standardwerte;
