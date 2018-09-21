-- Listing 10.2.sql
-- Die gleiche Abfrage mit ausgelagertem Coding
SELECT id,
       udf_name_formatieren(vorname, nachname) AS name,
       udf_symbol_fuer_geschlecht(geschlecht) AS mw,
       (SELECT text FROM udf_team_text() WHERE id = team) 
                                                AS team
FROM benutzer ;
