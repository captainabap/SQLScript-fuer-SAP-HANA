-- Listing 2.29.sql
-- Zuweisung von UDF-Ergebnissen an lokale Variablen



DO BEGIN
     DECLARE lv_benutzername NVARCHAR(42);
--Zuweisung einer skalaren UDFs zu skalaren Variablen
     lv_benutzername = udf_name( 'Jörg', 
                                 'Brandeis' );

     SELECT lv_benutzername FROM dummy;

--Zuweisung einer Tabellen-UDF an eine Tabellenvariable
    lt_statustexte = SELECT * FROM  udf_statustexte('DE');

     SELECT * FROM :lt_statustexte;
END;
