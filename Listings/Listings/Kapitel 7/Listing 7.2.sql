-- Listing 7.2.sql
-- Beispiel für Einschränkungen auf einzelnen Spalten

CREATE TABLE status (id INT PRIMARY KEY, 
                     sortiernr INT NOT NULL UNIQUE,
                     text NVARCHAR(30) );
