-- Listing 9.2.sql
-- Minimale Implementierung einer Endroutine

  METHOD procedure BY DATABASE PROCEDURE 
                   FOR HDB 
                   LANGUAGE SQLSCRIPT 
                   OPTIONS READ-ONLY.
    
    OUTTAB   = SELECT * FROM :INTAB;
    ERRORTAB = SELECT '' AS ERROR_TEXT,
                      '' AS SQL__PROCEDURE__SOURCE__RECORD
                 FROM  DUMMY
                 WHERE DUMMY <> 'X';
  ENDMETHOD.
