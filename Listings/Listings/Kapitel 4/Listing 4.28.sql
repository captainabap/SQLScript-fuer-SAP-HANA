-- Listing 4.28.sql
-- Zerlegung eines Datums oder einer Zeit in ihre Komponenten

SELECT
      1                        AS row,
      YEAR(CURRENT_DATE)       AS "Jahr",
      MONTH(CURRENT_DATE)      AS "Monat",
      DAYOFMONTH(CURRENT_DATE) AS "Tag",
      HOUR(CURRENT_TIME)       AS "Stunde",
      MINUTE(CURRENT_TIME)     AS "Minute",
      SECOND(CURRENT_TIME)     AS "Sekunde"
   FROM DUMMY
UNION ALL
SELECT
      2                                 AS row,
      EXTRACT(YEAR FROM CURRENT_DATE)   AS "Jahr",
      EXTRACT(MONTH FROM CURRENT_DATE)  AS "Monat",
      EXTRACT(DAY FROM CURRENT_DATE)    AS "Tag",
      EXTRACT(hour FROM CURRENT_TIME)   AS "Stunde",
      EXTRACT(minute FROM CURRENT_TIME) AS "Minute",
      EXTRACT(second FROM CURRENT_TIME) AS "Sekunde"
   FROM dummy;
