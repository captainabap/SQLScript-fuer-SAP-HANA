-- Listing 5.1.sql
-- Tabellen für die Beispiele dieses Kapitels
CREATE TABLE tabelle_1(
   key1 INT DEFAULT 5,
   key2 INT,
   wert1 NVARCHAR(200),
   PRIMARY KEY (
      key1,
      key2   )
);
CREATE TABLE tabelle_2(
   key1 INT PRIMARY KEY,
   wert1 NVARCHAR(200),
   wert2 NVARCHAR(200)
);
