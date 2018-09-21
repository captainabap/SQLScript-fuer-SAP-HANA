--Listing 2.21.sql
--Interner Prozeduraufruf mit Angabe des Schemas
DO BEGIN
   CALL jbrandeis.statustexte(iv_sprache=>'DE',
                              et_result=> lt_statustexte) ;
END;