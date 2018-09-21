--Listing 2.23.sql
--Deklaration und Initialisierung einer neuen Tabellenvariable beim Prozeduraufruf
DO BEGIN
   statustexte(iv_sprache=>'DE',
               et_result=>lt_statustexte) ;
   SELECT * FROM :lt_statustexte;
END;
