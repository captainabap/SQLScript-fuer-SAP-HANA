--Beispiel für mehrere Anweisungen in der SQL-Konsole
CREATE TABLE namen ( id   INT, 
        last_name VARCHAR(30), 
        first_name VARCHAR(30) );
INSERT INTO namen VALUES ( 1,'Brandeis','Jörg' );
INSERT INTO namen VALUES ( 2, 'Müller', 'Peter' );
SELECT * FROM namen;
DROP TABLE namen;
