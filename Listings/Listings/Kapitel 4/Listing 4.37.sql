-- Listing 4.37.sql
-- Beispiel für eine einfache Währungsumrechnung

CREATE TABLE betraege(
         betrag   DEC(17,2),
         waehrung VARCHAR(3) ) ;

INSERT INTO betraege VALUES(89.90,'EUR') ;
INSERT INTO betraege VALUES(17.20,'USD') ;
INSERT INTO betraege VALUES(4.54,'GBP') ;

SELECT
      betrag                       AS "Betrag",
      waehrung                     AS "Währung",
      CONVERT_CURRENCY( AMOUNT             => betrag,
                        SOURCE_UNIT        => waehrung,
                        SCHEMA             => 'JBRANDEIS',
                        TARGET_UNIT        => 'USD',
                        REFERENCE_DATE     => '2013-09-23',
                        CLIENT             => '000')
                                   AS "Betrag in USD",
      'USD'                        AS "USD"
   FROM betraege;

DROP TABLE betraege;
