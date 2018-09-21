-- Listing 6.31.sql
-- ARRAYs in SQLScript-Code

 
DO BEGIN
   DECLARE i INT;
   DECLARE demo VARCHAR(20) ARRAY;

-- Einfügen von 10 Elementen in das ARRAY
   FOR i IN 1..10 DO
      demo[:i] = concat ('Wert Nr.', :i);
   END FOR;
   
   SELECT :demo[10] FROM dummy;
   
-- Entfernen der hinteren 5 Elemente
   demo = TRIM_ARRAY( :demo, 5 );
   SELECT :demo[1],
          :demo[5],
          :demo[10]
       FROM dummy;
       
-- Einfügen eines Elements an Position 20
   demo[20] = 'Letztes Element';
   SELECT :demo[5],
          :demo[10],
          :demo[20]
       FROM dummy;
END;
