--SELECT-Abfrage mit UDFs

SELECT a.id,
   udf_benutzername(a.bearbeiter),
   a.titel,
   s.status_text
FROM udf_aufgaben_in_status(4) AS a
LEFT OUTER JOIN udf_statustexte('DE') AS s
   ON a.STATUS = s.id;