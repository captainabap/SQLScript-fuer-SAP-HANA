-- Listing 11.3.sql
-- Zwei Prozeduren zum Debuggen

DROP PROCEDURE A;DROP PROCEDURE B;
CREATE PROCEDURE A (IN iv_id INT, OUT ot_benutzer benutzer)
AS BEGIN
  ot_benutzer = SELECT * 
                       FROM benutzer 
                       WHERE id >= :iv_id 
                         and id <= :iv_id + 5;
END;

CREATE PROCEDURE B (OUT ot_benutzer benutzer)
AS BEGIN
  CALL A(iv_id=>'1', ot_benutzer=>lt_tmp1);
  CALL A(iv_id=>'20', ot_benutzer=>lt_tmp20);
  ot_benutzer = SELECT * FROM :lt_tmp1
                UNION
                SELECT * FROM :lt_tmp20;
END;

CALL B(?);
