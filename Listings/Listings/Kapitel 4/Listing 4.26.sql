-- Listing 4.26.sql
-- Konvertierung von Zeit nach Zeichenkette

CREATE TABLE tab_format ( formatierung   VARCHAR(10),
                          beschreibung   nvarchar(40) ) ;

INSERT INTO tab_format VALUES('HH24',
         'Stunde im 24-Stunden Format') ;
INSERT INTO tab_format VALUES('HH',
         'Stunde im 12-Stunden Format') ;
INSERT INTO tab_format VALUES('HH12',
         'Stunde im 12-Stunden Format') ;
INSERT INTO tab_format VALUES('AM',
         'AM (=Vormittag) oder PM (=Nachmittag)') ;
INSERT INTO tab_format VALUES('PM',
         'AM (=Vormittag) oder PM (=Nachmittag)') ;
INSERT INTO tab_format VALUES('MI',
         'Minuten') ;
INSERT INTO tab_format VALUES('SS',
         'Sekunden') ;
INSERT INTO tab_format VALUES('SSSSS',
         'Sekunden seit Mitternacht') ;
SELECT
      formatierung,
      to_varchar( to_time( '09:50:13'),
                 formatierung )  AS "Beispiel 09:50:13",
      to_varchar( to_time( '13:07:38'),
                 formatierung )  AS "Beispiel 13:07:38",
      beschreibung
   FROM  tab_format ;
DROP TABLE tab_format ;
