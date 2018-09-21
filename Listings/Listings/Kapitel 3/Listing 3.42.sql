-- Listing 3.42.sql
-- Verwendung von GROUPING SETS für die Bildung von Summenzeilen
 
 
 
DO BEGIN
   lt_aggregation = SELECT bearbeiter,
                           status,
                           count(*) AS cnt
                    FROM aufgaben
                    GROUP BY GROUPING SETS(
                               ( status, bearbeiter ),          
                               ( bearbeiter ) )
                    ORDER BY bearbeiter,
                                status NULLS LAST;

   SELECT b.Vorname || ' ' || b.nachname AS Bearbeiter,
          coalesce(s.status_text, '     Summe') AS STATUS,
          aggr.cnt
   FROM :lt_aggregation AS aggr
   LEFT JOIN benutzer AS b    --Hinzulesen der Benutzerdaten
      ON aggr.bearbeiter = b.id
   LEFT JOIN status_text AS s -- Hinzulesen der Statustexte
      ON aggr.STATUS = s.id
         AND s.sprache = 'DE';
END;
