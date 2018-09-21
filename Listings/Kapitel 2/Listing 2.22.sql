--Listing 2.22.sql
--Interner Prozeduraufruf ohne CALL
DO BEGIN
   statustexte(iv_sprache=>'DE',
               et_result=> lt_statustexte) ;
END;
