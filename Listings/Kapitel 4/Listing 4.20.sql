-- Listing 4.20.sql
-- Konvertierung von Zeichen in ASCII bzw. Unicode und umgekehrt

SELECT ascii('A')     AS char2ascii   ,
       char(65)       AS asci2char    ,
       unicode('?')  AS nchar2unicode,
       nchar('30908') AS unicode2nchar
   FROM dummy;
