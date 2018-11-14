-- Listing 2.39.sql
-- Tabelle für Testdaten



CREATE TABLE test_versandpreise (
   laenge INT,
   breite INT,
   hoehe INT,
   gewicht INT,
   als_paeckchen VARCHAR(1),
   ist_online VARCHAR(1),
   erwarteter_preis DEC(17, 2)
   );
