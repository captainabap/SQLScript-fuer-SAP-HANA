-- Listing 10.1.sql
-- Beispiel für Komplexität in einfachen Abfragen
 
SELECT id,
   -- Name formatieren
   nachname || ', ' || vorname AS name,
   -- Symbol für das Geschlecht
   CASE 
      WHEN geschlecht = 'F'
         THEN NCHAR('9792')
      WHEN geschlecht = 'M'
         THEN NCHAR('9794')
      ELSE ''
      END AS MW,
   -- Text für das Team hinzufügen
   COALESCE((
         SELECT team_text
         FROM team_text
         WHERE ID = team
            AND sprache = 'DE'
         ), (
         SELECT team_text
         FROM team_text
         WHERE ID = team
            AND sprache = 'EN'
         ), '') AS team
FROM benutzer;
