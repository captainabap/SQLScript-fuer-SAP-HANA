-- Listing 4.19.sql
-- Suche mit regulären Ausdrücken

SELECT *
   FROM benutzer
   WHERE nachname LIKE_REGEXPR 'M(a|e)(i|y)(a|er)';
