-- Listing 4.24.sql
-- Beispiel für die Formatierung von Datumsfeldern

CREATE TABLE tab_format ( formatierung   VARCHAR(10),
                          beschreibung   nvarchar(40) ) ;

INSERT INTO tab_format VALUES('YY',
         'Jahr 2-Stellig') ;
INSERT INTO tab_format VALUES('YYYY',
         'Jahr 4-Stellig') ;
INSERT INTO tab_format VALUES('MM',
         'Monat als zwei Ziffern') ;
INSERT INTO tab_format VALUES('DD',
         'Tag im Monat') ;
INSERT INTO tab_format VALUES('Q',
         'Quartal') ;
INSERT INTO tab_format VALUES('WW',
         'Kalenderwoche') ;
INSERT INTO tab_format VALUES('RM',
         'Monat in römischer Schreibweise') ;
INSERT INTO tab_format VALUES('MON',
         '3-Stellige Abkürzung des Monats') ;
INSERT INTO tab_format VALUES('MONTH',
         'Monat ausgeschrieben, in Englisch') ;
INSERT INTO tab_format VALUES('DDD',
         'Tag im Jahr') ;
INSERT INTO tab_format VALUES('YYYY=MM=DD',
         'Beispiel für individuelle Muster') ;
SELECT
      formatierung,
      to_varchar( to_dats( '08.12.2017'),
                 formatierung )  AS "Beispiel",
      beschreibung
   FROM  tab_format ;
DROP TABLE tab_format ;
