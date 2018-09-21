-- Listing 6.29.sql
-- Beispiel für die Verwendung eines Cursors

DO ( OUT ov_alle_titel NVARCHAR(900) => ?)
BEGIN
   lt_aufgaben = SELECT TOP 10 titel FROM aufgaben;
   ov_alle_titel = '';

   BEGIN
      DECLARE CURSOR lc_aufgaben
         FOR SELECT titel FROM :lt_aufgaben;

      DECLARE lv_indx INT;
      DECLARE lv_titel NVARCHAR(40);

      OPEN lc_aufgaben;
      WHILE 1 <> 2 DO
         FETCH lc_aufgaben INTO lv_titel;
         IF lc_aufgaben::NOTFOUND THEN 
            BREAK;
         END IF;
         ov_alle_titel = ov_alle_titel || ' - ' || lv_titel;
      END WHILE;
      CLOSE lc_aufgaben;
   END;
END;
