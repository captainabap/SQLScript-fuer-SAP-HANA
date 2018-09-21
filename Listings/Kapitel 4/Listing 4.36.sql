-- Listing 4.36.sql
-- Beispiel für die Mengenumrechnung in eine feste Einheit

CREATE TABLE mengen (
         menge   DECIMAL(15,2),
         einheit VARCHAR(3) ) ;
INSERT INTO mengen VALUES(1.0,'MG') ;
INSERT INTO mengen VALUES(1.0,'G') ;
INSERT INTO mengen VALUES(1.0,'KG') ;
INSERT INTO mengen VALUES(1.0,'TO') ;
INSERT INTO mengen VALUES(1.0,'XYZ') ;

SELECT
      menge                         AS "Menge",
      einheit                       AS "Einheit",
      CONVERT_UNIT(
             QUANTITY       => menge,
             SOURCE_UNIT    => einheit,
             SCHEMA         => 'JBRANDEIS',
             TARGET_UNIT    => 'KG',
             ERROR_HANDLING => 'set to null',
             CLIENT         => '000')
                                    AS "Menge in Kg",
      'Kg'                          AS "Kg"
   FROM mengen;
