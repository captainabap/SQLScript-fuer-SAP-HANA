-- Listing 6.8.sql
-- Indexbasierter Zugriff mit skalaren Ausdrücken als Index

DO (OUT ot_result TABLE(text NVARCHAR(100))=>?) 
BEGIN 
   DECLARE indx integer;

   lt_aufgaben = SELECT TOP 10 * 
                 FROM aufgaben;
   lt_status = SELECT * 
                 FROM status_text 
                 WHERE sprache = 'DE' 
                 ORDER BY id ASC;

   FOR indx IN 1..10 DO
      ot_result[:indx] = 
         :lt_status.status_text[:lt_aufgaben.status[:indx]] 
         || ' - ' 
         || :lt_aufgaben.titel[:indx];
   END FOR;
END;
