-- Listing 6.4.sql
-- Beispiel für SELECT INTO in mehrere Variablen

DO BEGIN
  DECLARE lv_bearbeiter INT;
  DECLARE lv_status INT;
  DECLARE EXIT HANDLER 
  SELECT bearbeiter,
         status
  INTO lv_bearbeiter , 
       lv_status
  FROM aufgaben
  WHERE id = -1;
  
  SELECT lv_bearbeiter, 
         lv_status FROM DUMMY;
END;
