-- Listing 6.33.sql
-- Konvertierung von einer Tabellenspalte in ein Array und Abfrage der Kardinalität
Abbildung 1.5 zeigt das Ergebnis.

 
DO BEGIN
   DECLARE lv_cardinality INT;
   DECLARE la_bearbeiter INT ARRAY;

   lt_aufgaben = SELECT DISTINCT bearbeiter FROM aufgaben;
   la_bearbeiter = ARRAY_AGG(:lt_aufgaben.bearbeiter);
   lv_cardinality = CARDINALITY(:la_bearbeiter);
   SELECT :lv_cardinality
      FROM DUMMY;
END;
