-- Listing 3.1.sql
-- Implizite Typisierung von Tabellenvariablen
DO BEGIN
--Ableitung des Tabellentyps aus dem Parameter der Prozedur
   CALL statustexte(iv_sprache => 'DE', 
                    et_result => lt_statustext);

--Ableitung des Tabellentyps aus der Rückgabestruktur der 
--SELECT-Abfrage  
   lt_status = SELECT * FROM STATUS;

   SELECT * FROM :lt_statustext;
   SELECT * FROM :lt_status;
END;
