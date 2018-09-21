-- Listing 6.5.sql
-- Beispiel für die Fehlerverarbeitung bei SELECT INTO

  
CREATE PROCEDURE get_bearbeiter_status
       (IN  iv_id INT,
        OUT ov_bearbeiter INT,
        OUT ov_status INT  )
AS BEGIN
--Bis HANA 2.0 SPS03:
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
     BEGIN
        ov_bearbeiter = -1;
        ov_status     = -1;
     END;
     
  SELECT bearbeiter,
         status
  INTO ov_bearbeiter , 
       ov_status
  DEFAULT -1,    --Ab HANA 2.0 SPS03: Standardwerte
          -1     --für Variablen bei der Zuweisung
  FROM aufgaben
  WHERE id = iv_id;
  
END;

CALL get_bearbeiter_status(1, ?, ?);
CALL get_bearbeiter_status(-1, ?, ?);
