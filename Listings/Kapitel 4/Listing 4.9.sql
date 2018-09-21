-- Listing 4.9.sql
-- Einfache Zeichenkettenzerlegung mit regulären Ausdrücken

CREATE TABLE gesellschaften( firma NVARCHAR(30) ) ;
INSERT INTO gesellschaften VALUES('BASF SE') ;
INSERT INTO gesellschaften VALUES('SAP SE') ;
INSERT INTO gesellschaften VALUES('Bauer GmbH') ;
INSERT INTO gesellschaften VALUES('Siemens AG') ;
SELECT SUBSTR_REGEXPR('GmbH|AG|SE' IN firma) AS rechtsform,
       firma
   FROM gesellschaften;
DROP TABLE gesellschaften;
