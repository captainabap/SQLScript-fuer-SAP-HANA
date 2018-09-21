-- Listing 6.6.sql
-- Verschachtelte Blöcke und Überdeckung von Variablen

 
DO
BEGIN --Begin des äusseren Blocks
   DECLARE var1 VARCHAR(10) default 'Aussen';
   DECLARE var2 VARCHAR(10) default 'Aussen';

   BEGIN --Begin des inneren Blocks
      DECLARE var1 VARCHAR(10);--Var1 wird neu deklariert

      var1 = 'Innen';
      var2 = 'Innen';
      SELECT 'Innerer Block:' as comment,
             :var1,
             :var2 
      FROM DUMMY;
   END;-- Ende des inneren Blocks

   SELECT 'Aeusserer Block' as comment,
          :var1,
          :var2
   FROM DUMMY;
END;--Ende des äusseren Blocks 
