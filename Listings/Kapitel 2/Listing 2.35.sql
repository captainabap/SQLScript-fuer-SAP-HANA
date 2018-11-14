-- Listing 2.35.sql
-- Testfälle für die Funktion UDF_GROESSENKATEGORIE



SELECT udf_groessenkategorie(30, 30, 10)  FROM DUMMY;
SELECT udf_groessenkategorie(35, 30, 15)  FROM DUMMY;
SELECT udf_groessenkategorie(30, 30, 30)  FROM DUMMY;
SELECT udf_groessenkategorie(121, 30, 30) FROM DUMMY;
