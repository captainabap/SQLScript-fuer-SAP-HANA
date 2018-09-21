-- Listing 3.6.sql
-- Beispiel für *-Sternchen in Feldlisten



SELECT t1.* ,
       t2.spalte1
  FROM tabelle1 AS t1
  JOIN tabelle2 AS t2 
  ON t1.key = t2.key;
