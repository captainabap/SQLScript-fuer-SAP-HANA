-- Listing 6.9.sql
-- Zugriff auf nicht vorhandene Zeilen

DO (OUT ot_result TABLE( id INT,
                         titel NVARCHAR(50))=>?)
BEGIN
   ot_result = SELECT TOP 10  id, titel FROM aufgaben;

   ot_result.titel[30]  =  :ot_result.titel[1];
   ot_result.titel[1]   =  :ot_result.titel[31];
END;
