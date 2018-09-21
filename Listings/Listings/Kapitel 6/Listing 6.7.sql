-- Listing 6.7.sql
-- Indexbasierter Zugriff auf Tabellenvariablen 

 
DO (OUT ot_result TABLE( id INT,
                         titel NVARCHAR(50))=>?)
BEGIN
   ot_result = SELECT top 10  id, titel FROM aufgaben;
   ot_result.titel[1] = 'Titel: ' || :ot_result.titel[1];
END;
