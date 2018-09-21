-- Listing 4.29.sql
-- Bestimmung der Kalenderwoche

SELECT
      WEEK('2017-12-08'),   -->50
      ISOWEEK('2017-12-08') -->2017-W49
   FROM dummy
