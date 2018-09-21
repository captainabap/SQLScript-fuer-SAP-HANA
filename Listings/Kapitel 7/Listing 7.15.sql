-- Listing 7.15.sql
-- Parametrisierung für die Verarbeitung pro Anweisung mit Tabellenparametern[KB1]

CREATE TRIGGER rp_insert AFTER INSERT 
       ON rechnungspositionen
       REFERENCING NEW TABLE AS lt_new 
       FOR EACH STATEMENT
...
