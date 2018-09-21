-- Listing 7.9.sql
-- Beispiel für einen View als gespeicherte SELECT-Abfrage
 
CREATE TABLE rechnungspositionen(
   rechnungsnr INT,
   position    INT, 
   produkt     NVARCHAR(30),
   menge       INT,
   betrag      DEC(17,2),
   waehrung    VARCHAR(5),
   primary key (rechnungsnr, position)
);
CREATE VIEW rechnungen 
   AS SELECT rechnungsnr,
             SUM(betrag*menge) as betrag,
             waehrung 
      FROM rechnungspositionen
      GROUP BY rechnungsnr,
               waehrung;
               
INSERT INTO rechnungspositionen 
       VALUES (1, 10, 'Fernseher', 1, 765.23, 'EUR');
INSERT INTO rechnungspositionen 
       VALUES (1, 20, 'Kabel'    , 1, 12.99 , 'EUR');
INSERT INTO rechnungspositionen 
       VALUES (1, 30, 'Batterien', 4, 1.99  , 'EUR');
INSERT INTO rechnungspositionen 
       VALUES (2, 10, 'Maus     ', 1, 23.99 , 'EUR');
INSERT INTO rechnungspositionen 
       VALUES (3, 10, 'Kabel'    , 2, 12.99 , 'EUR');
INSERT INTO rechnungspositionen 
       VALUES (3, 20, 'Swich'    , 1, 27.99 , 'USD');

--SELECT-Abfrage auf die Tabelle
SELECT rechnungsnr,
       SUM(betrag*menge) as betrag,
       waehrung 
FROM rechnungspositionen
GROUP BY rechnungsnr,
       waehrung;

--SELECT-Abfrage auf den VIEW 
SELECT * FROM rechnungen;
