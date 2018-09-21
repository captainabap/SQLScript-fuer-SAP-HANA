-- Listing 9.7.sql
-- Einfache Fehlerermittlung aus den Eingangsdaten der INTAB

 
errortab = SELECT 'Währung ist leer!' AS ERROR_TEXT, 
                  SQL__PROCEDURE__SOURCE__RECORD
                  FROM :intab 
                  WHERE currency = ' '
                    AND amount <> 0;
