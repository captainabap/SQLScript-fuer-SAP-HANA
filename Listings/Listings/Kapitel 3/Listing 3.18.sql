-- Listing 3.18.sql
-- Erweiterung des Beispiels um die Anzahl der Benutzer


SELECT STRING_AGG(team_text.team_text || '(' 
                                      || cnt 
                                      || ')', ', ')
FROM (
   SELECT team,
      count(*) AS cnt
   FROM benutzer
   GROUP BY team
   ) AS b
INNER JOIN team_text
   ON team_text.id = b.team
WHERE sprache = 'DE'
