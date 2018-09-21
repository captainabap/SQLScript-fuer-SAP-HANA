-- Listing 4.21.sql
-- Ausgabe eines Datums als Datentyp DATE und VARCHAR

CREATE TABLE datum(line INT,datum DATE) ;
INSERT INTO datum VALUES(1,'1.12.2017') ;
INSERT INTO datum VALUES(2,'2017.12.02') ;
SELECT line,
       datum      ,
       to_varchar(datum) as as_char
   FROM datum;
DROP TABLE datum;
