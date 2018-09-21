-- Listing 4.6.sql
-- Zerlegung von Zeichenketten mit Positionsangaben

SELECT LEFT('ABCDEFGHI',3)         AS links, -->'ABC'
       SUBSTRING('ABCDEFGHI',4,3)  AS mitte, -->'DEF'
       RIGHT('ABCDEFGHI',3)        AS rechts -->'GHI'
   FROM
      DUMMY;
