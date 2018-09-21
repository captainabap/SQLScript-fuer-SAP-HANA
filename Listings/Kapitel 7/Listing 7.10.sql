-- Listing 7.10.sql
-- Definition von parametrisierten Views
 
CREATE VIEW rechnungen (IN iv_waehrung VARCHAR(5))
   AS SELECT rechnungsnr,
             SUM(betrag*menge) as betrag,
             waehrung 
      FROM rechnungspositionen
      WHERE waehrung = :iv_waehrung
      GROUP BY rechnungsnr,
               waehrung;
