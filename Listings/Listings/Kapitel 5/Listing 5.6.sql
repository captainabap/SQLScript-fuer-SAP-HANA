-- Listing 5.6.sql
-- Beispiel für eine einfache UPDATE-Anweisung
 
UPDATE tabelle_2 
   SET wert1 = 'Aktualisiert',
       wert2 = 'Zeile ' || key1
   WHERE key1 < 300;
