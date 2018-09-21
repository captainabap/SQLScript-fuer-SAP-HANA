-- Listing 9.9.sql
-- Prüfung auf Steuerzeichen
outtab   = SELECT * FROM :intab;
errortab = SELECT 'Feldinhalt prüfen!'  AS ERROR_TEXT,
                  SQL__PROCEDURE__SOURCE__RECORD
             FROM :intab
             WHERE text LIKE_REGEXPR '.*[[cntrl]].*'
                OR text LIKE '!%'
                OR text = '#';
