--Beispiel für das Anlegen, Ausführen und Löschen einer einfachen Prozedur

CREATE PROCEDURE parameter_test (

--Skalarer Datentyp als Eingabeparameter
   IN iv_projekt INT,  
        
--Datenbanktabelle als Typ für einen Ausgabeparameter
   OUT ot_aufgaben aufgaben,   

-- Ein Tabellentyp für einen Ausgabeparameter
   OUT ot_status_text id_text, 

-- Definition des Tabellentyps im Code:
   OUT ot_restaufwand TABLE ( aufgabe INT,               
                              restaufwand INT ) )
AS
BEGIN
   ot_aufgaben = SELECT *
                 FROM aufgaben
                 WHERE projekt = :iv_projekt;

   ot_status_text = SELECT id,
                       status_text AS TEXT
                    FROM status_text;

   ot_restaufwand = SELECT id AS aufgabe,
                       plan_aufwand - ist_aufwand 
                                      AS restaufwand
                    FROM :ot_aufgaben;
END;

CALL parameter_test(2, ?, ?, ?);

DROP PROCEDURE parameter_test;