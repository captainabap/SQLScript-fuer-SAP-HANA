-- Listing 4.31.sql
-- Beispiel für die Selektion auf die vier letzten abgeschlossenen Wochen

CREATE TABLE bw_daten(calday varchar(8));
INSERT INTO bw_daten VALUES (TO_DATS('10.06.2018'));
INSERT INTO bw_daten VALUES (TO_DATS('11.06.2018'));
INSERT INTO bw_daten VALUES (TO_DATS('13.05.2018'));
INSERT INTO bw_daten VALUES (TO_DATS('14.05.2018'));
SELECT *
FROM bw_daten
WHERE calday <= TO_DATS(ADD_DAYS(CURRENT_DATE, UMINUS(
            WEEKDAY(CURRENT_DATE) + 1)))
   AND calday >= TO_DATS(ADD_DAYS(CURRENT_DATE, UMINUS(
            WEEKDAY(CURRENT_DATE) + 28)));
DROP TABLE bw_daten;
