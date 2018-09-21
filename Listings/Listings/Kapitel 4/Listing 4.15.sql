-- Listing 4.15.sql
-- Beispiel für die PAD-Funktionen

SELECT 'LPAD(''ABC'',8,''anfang'')' AS "Funktion",
       LPAD('ABC',8,'anfang')       AS "Ergebnis"
   FROM dummy
UNION
SELECT 'RPAD(''ABC'',8,''ende'')' AS "Funktion",
       RPAD('ABC',8,'ende')       AS "Ergebnis"
   FROM dummy;
