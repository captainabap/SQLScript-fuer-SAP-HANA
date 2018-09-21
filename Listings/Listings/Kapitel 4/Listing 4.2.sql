-- Listing 4.2.sql
-- Beispiel für das Verhalten des Datentyps ALPHANUM

CREATE TABLE zeichenketten  (
     row_nr INT,
     col_alphanum ALPHANUM(4)  );

INSERT INTO zeichenketten VALUES ( 1,'12');
INSERT INTO zeichenketten VALUES ( 2,'012');
INSERT INTO zeichenketten VALUES ( 3,'0012');
INSERT INTO zeichenketten VALUES ( 4,'2');
INSERT INTO zeichenketten VALUES ( 5,'20');
INSERT INTO zeichenketten VALUES ( 6,'2a');
INSERT INTO zeichenketten VALUES ( 7,'a2');

SELECT *
FROM   zeichenketten
ORDER  BY col_alphanum;

DROP TABLE zeichenketten;
