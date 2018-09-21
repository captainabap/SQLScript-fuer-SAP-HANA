-- Listing 4.30.sql
-- Berechnung der Maschinenlaufzeit in Stunden

CREATE TABLE abap_laufzeit(von_datum VARCHAR(8),
                           von_zeit  VARCHAR(6),
                           bis_datum VARCHAR(8),
                           bis_zeit  VARCHAR(6));
INSERT INTO abap_laufzeit VALUES ( '20180101', '060000',
                                   '20180101', '065900' );
INSERT INTO abap_laufzeit VALUES ( '20180101', '060000',
                                   '20180101', '140000' );
INSERT INTO abap_laufzeit VALUES ( '20180101', '060000',
                                   '20180103', '050000' );
INSERT INTO abap_laufzeit VALUES ( '20180101', '060000',
                                   '20180201', '060000' );

SELECT FLOOR(
             SECONDS_BETWEEN(
                        TO_SECONDDATE(
                                 TO_DATE(von_datum)
                                 ||' '||
                                 TO_TIME(von_zeit)),
                        TO_SECONDDATE(
                                 TO_DATE(bis_datum)
                                 ||' '||
                                 TO_TIME(bis_zeit)))
             / 60 /*Sekunden in Minuten*/
             / 60 /*Minuten in Stunden*/)

       AS laufzeit_in_stunden
       FROM abap_laufzeit;

DROP TABLE abap_laufzeit;
