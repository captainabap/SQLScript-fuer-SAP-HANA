-- Listing 4.7.sql
-- Zeichenkettenzerlegung mit SUBSTR_BEFORE und SUBSTR_AFTER

SELECT substr_before('Raus aus dem Haus','aus') AS  links ,
       substr_after('Raus aus dem Haus','aus')  AS  rechts,
       substr_after('Raus aus dem Haus','')     AS  alles ,
       substr_after('Raus aus dem Haus','ABC')  AS  nichts
   FROM
      DUMMY;
