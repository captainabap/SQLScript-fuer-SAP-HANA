-- Listing 10.3.sql
-- Die drei Funktionen, die in Listing 10.2 verwendet werden
CREATE FUNCTION udf_name_formatieren(
   iv_vorname NVARCHAR(20),
   iv_nachname NVARCHAR(20)
)
RETURNS rv_name NVARCHAR(42)
AS BEGIN 
   rv_name = iv_nachname || ', ' || iv_vorname;
END;

CREATE FUNCTION udf_symbol_fuer_geschlecht(
   iv_geschlecht NVARCHAR(1)
)
RETURNS rv_symbol NVARCHAR(1)
AS BEGIN
   rv_symbol = CASE WHEN iv_geschlecht = 'F'
                       THEN NCHAR('9792')
                    WHEN iv_geschlecht = 'M'
                       THEN NCHAR('9794')
                    ELSE '' END;
END;

CREATE FUNCTION udf_team_text( )
RETURNS TABLE(id INT, text NVARCHAR(20))
AS BEGIN
   lt_team_id = SELECT DISTINCT id FROM TEAM_TEXT;
   
   RETURN 
         SELECT input.id,
                COALESCE(de.team_text,
                         en.team_text,
                         '') AS text
         FROM  :lt_team_id AS input
               LEFT OUTER JOIN team_text as de
               ON de.id = input.id
               AND de.sprache = 'DE'
               LEFT OUTER JOIN team_text as en
               ON en.id = input.id
               AND en.sprache = 'EN';
END;
