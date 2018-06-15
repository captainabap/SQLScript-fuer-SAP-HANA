SELECT count(*) AS cnt,
   'benutzer' AS tabelle
FROM benutzer

UNION

SELECT count(*) AS cnt,
   'projekte' AS tabelle
FROM projekte

UNION

SELECT count(*) AS cnt,
   'aufgaben' AS tabelle
FROM aufgaben

UNION

SELECT count(*) AS cnt,
   'status' AS tabelle
FROM STATUS

UNION

SELECT count(*) AS cnt,
   'status_text' AS tabelle
FROM status_text

UNION

SELECT count(*) AS cnt,
   'team_text' AS tabelle
FROM team_text

UNION

SELECT count(*) AS cnt,
   'aufgaben_log' AS tabelle
FROM aufgaben_log

UNION

SELECT count(*) AS cnt,
   'bw_daten' AS tabelle
FROM bw_daten

UNION

SELECT count(*) AS cnt,
   'farben' AS tabelle
FROM farben

UNION

SELECT count(*) AS cnt,
   'groessen' AS tabelle
FROM groessen;
