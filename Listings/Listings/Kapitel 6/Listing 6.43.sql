-- Listing 6.43.sql
-- Dynamisches Filtern mit APPLY_FILTER
 
CREATE PROCEDURE gefilterte_aufgaben (
   IN iv_where VARCHAR(100),
   OUT rt_ergebnis TABLE ( id INT,
                           STATUS INT,
                           titel NVARCHAR(40)  ) )
AS BEGIN
   lt_tmp = APPLY_FILTER(aufgaben, :iv_where);

   rt_ergebnis = SELECT id,
                    STATUS,
                    titel
                 FROM :lt_tmp;
END;

CALL gefilterte_aufgaben('status in ( 1, 2)', ?);
