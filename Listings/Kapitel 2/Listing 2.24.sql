-- Listing 2.24.sql
-- Prozeduraufruf über die Position



DO BEGIN
   statustexte('DE',lt_statustexte) ; 
   SELECT * FROM :lt_statustexte;
END; 
