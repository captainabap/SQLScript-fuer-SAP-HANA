-- Listing 4.22.sql
-- Erzeugung und Darstellung des leeren Datums

CREATE TABLE datum(line INT,datum DATE) ;
INSERT INTO datum VALUES(1,'0') ;
INSERT INTO datum VALUES(2,'') ;
INSERT INTO datum VALUES(3,'0000-00-00') ;
INSERT INTO datum VALUES(4,'00000000') ;--ABAP
INSERT INTO datum VALUES(5,'0001-01-01') ;
SELECT line,
       datum,
       to_varchar(datum) as as_char,
       days_between(datum, '00001-01-10')as Delta
   FROM datum;
DROP TABLE datum;
