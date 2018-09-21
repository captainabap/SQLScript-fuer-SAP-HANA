-- Listing 4.34.sql
-- Grundrechenarten in SQL

CREATE TABLE calc( wert1 INTEGER,
		      wert2 INTEGER ) ;

INSERT INTO calc VALUES(1,1) ;
INSERT INTO calc VALUES(2,0) ;
INSERT INTO calc VALUES(0,2) ;
INSERT INTO calc VALUES(3,2) ;
SELECT
      wert1-wert2 AS differenz,
      wert1+wert2 AS summe,
      wert1*wert2 AS produkt,
      CASE
         WHEN wert2<>0
            THEN wert1/wert2
         ELSE 0
      END AS division,
      CASE
         WHEN wert2<>0
            THEN MOD(wert1,wert2)
         ELSE 0
      END AS modulo
   FROM calc;
