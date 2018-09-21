-- Listing 3.27.sql
-- Beispiel für einen Inner Join


 
CREATE TABLE belege ( belegnr  INT PRIMARY KEY,
                      betrag   DEC(17,2),
                      waehrung VARCHAR(3) ) ;

CREATE TABLE waehrungen ( waehrung VARCHAR(3) PRIMARY KEY,
                          text     nvarchar(20)  ) ;

INSERT INTO belege VALUES(1,34.34,'EUR') ;
INSERT INTO belege VALUES(2,12.53,'EUR') ;
INSERT INTO belege VALUES(3,234.12,'ALL');
INSERT INTO belege VALUES(4,45.12,'USD') ;

INSERT INTO waehrungen VALUES('EUR','Europäischer Euro') ;
INSERT INTO waehrungen VALUES('USD','US-Dollar') ;
INSERT INTO waehrungen VALUES('GBP','Britisches Pfund') ;

SELECT *
   FROM belege
      INNER JOIN waehrungen 
      ON belege.waehrung = waehrungen.waehrung;

DROP TABLE belege;
DROP TABLE waehrungen;
