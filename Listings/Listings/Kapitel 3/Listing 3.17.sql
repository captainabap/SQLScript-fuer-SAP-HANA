-- Listing 3.17.sql
-- Verkettung der Teamnamen mit der Aggregatfunktion STRING_AGG
 
 
 
SELECT sprache,
   string_agg(team_text, ', ')
FROM team_text
GROUP BY sprache; 
