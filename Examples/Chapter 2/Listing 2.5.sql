--Zugriff auf lokale Felder und Parameter
CREATE PROCEDURE get_name(IN id INT)
AS BEGIN
   tmp = SELECT id, name, first_name FROM test;
   SELECT * FROM :tmp WHERE id = :id; 
END;
CALL get_name(1);
