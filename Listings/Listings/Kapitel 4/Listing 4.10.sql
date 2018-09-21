-- Listing 4.10.sql
-- Beispiel für die Extraktion von E-Mailadressen aus einer Log-Tabelle

CREATE TABLE logtabelle (zeile  nvarchar(100)) ;
INSERT INTO logtabelle VALUES
('Fehlende Berechtigungen für elbert@brandeis.de') ;
INSERT INTO logtabelle VALUES
('Login fehlgeschlagen: sibrylle@tiergarten-ma.com.') ;
INSERT INTO logtabelle VALUES
('Benutzer ele.fant@tiergarten-ma.de wurde angemeldet.') ;
INSERT INTO logtabelle VALUES
('Server neu gestartet.') ;

SELECT SUBSTR_REGEXPR(
           '\b([A-Z0-9._%+-]+)@([A-Z0-9.-]+\.[A-Z]{2,})\b'
           FLAG 'i'
           IN zeile
           GROUP 1 ) AS name,
      SUBSTR_REGEXPR(
          '\b([A-Z0-9._%+-]+)@([A-Z0-9.-]+\.[A-Z]{2,})\b'
          FLAG 'i'
          IN zeile
          GROUP 2 ) AS host,
      SUBSTR_REGEXPR(
          '\b([A-Z0-9._%+-]+)@([A-Z0-9.-]+\.[A-Z]{2,})\b'
          FLAG 'i'
          IN zeile ) AS email,
      zeile
   FROM      logtabelle;
DROP TABLE logtabelle;
