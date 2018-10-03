--Anonymer Block mit Parametern

DO (IN  iv_status INT => 1, 
    OUT ot_aufgaben TABLE ( id INT,
                            titel NVARCHAR(40) ) => ?)

BEGIN
   ot_aufgaben =  SELECT id,
                     titel
                  FROM aufgaben
                  WHERE STATUS = :iv_status;
END;
