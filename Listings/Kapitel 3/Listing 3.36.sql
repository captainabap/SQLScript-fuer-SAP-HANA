-- Listing 3.36.sql
-- Prüfung auf NULL


 
--1. Prüfung mit dem NULL-Prädikat
SELECT *
FROM benutzer
WHERE vorname IS NULL;

--2. Achtung! Diese Abfrage liefert ein anderes Ergebnis!
SELECT *
FROM benutzer
WHERE vorname = NULL; --Falsch! Nicht verwenden!
