-- Beispiel für verschachtelte Anweisungen:
-- IF-Anweisung enthält eine INSERT-Anweisung
IF lv_counter > 0 
THEN 
   INSERT INTO farben VALUES ('Violett');
END IF;
