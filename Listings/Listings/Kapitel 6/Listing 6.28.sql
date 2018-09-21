-- Listing 6.28.sql
-- Beispiel für eine FOR-Schleife über einen Cursor mit Parameter

 
CREATE PROCEDURE projekte_abschliessen
AS
BEGIN
   DECLARE CURSOR lc_projekte (iv_status INT)
      FOR SELECT id
          FROM projekte
          WHERE STATUS = :iv_status;
          
   FOR ls_projekte AS lc_projekte(5) --Status = Geschlossen
      DO CALL projektaufgaben_schliessen(ls_projekte.id);
   END FOR;
END;
