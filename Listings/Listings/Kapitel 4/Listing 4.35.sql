-- Listing 4.35.sql
--Beispiele für die Rundungsfunktionen

CREATE TABLE calc( wert double) ;

INSERT INTO calc VALUES(1) ;
INSERT INTO calc VALUES(1.1) ;
INSERT INTO calc VALUES(-1.1) ;
INSERT INTO calc VALUES(1.499999) ;
INSERT INTO calc VALUES(1.500000) ;
INSERT INTO calc VALUES(-1.499999) ;
INSERT INTO calc VALUES(-1.500000) ;
INSERT INTO calc VALUES(1.749999) ;
INSERT INTO calc VALUES(1.750000) ;
INSERT INTO calc VALUES(175) ;

SELECT
     wert,
     CEIL(wert) AS aufrunden,
     FLOOR(wert) AS abrunden,
     ROUND(wert, 0, ROUND_HALF_UP) AS rhu_0,
     ROUND(wert, 0, ROUND_UP) AS ru_0,
     ROUND(wert, 1, ROUND_HALF_UP) AS rhu_1,
     ROUND(wert, 1, ROUND_UP) AS ru_1,
     ROUND(wert, -1) AS rhu_m1
   FROM calc;

DROP TABLE calc;
