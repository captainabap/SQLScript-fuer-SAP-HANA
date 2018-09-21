-- Listing 5.7.sql
-- Beispiel für eine UPDATE-Anweisung mit Bezug auf eine andere Tabelle


UPDATE tabelle_2 as t2     --Alternativ: UPDATE t2
   SET t2.wert1 = t1.wert1
   FROM tabelle_2 as t2, 
        tabelle_1 as t1
   WHERE t2.key1 = t1.key1 + t1.key2 * 100;
