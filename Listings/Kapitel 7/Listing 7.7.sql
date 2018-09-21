-- Listing 7.7.sql
-- Beispiel für die Änderung von Tabelleneigenschaften

CREATE ROW TABLE demo_table(
    col1 INT,
    col2 INT
);

--Hinzufügen einer Spalte
ALTER TABLE demo_table ADD (col3 VARCHAR(20));

--Ändern von Spalteneigenschaften, z.B. Standardwert setzen:
ALTER TABLE demo_table ALTER (col1 INT DEFAULT 42);

--Hinzufügen der Primärschlüsseldefinition:
ALTER TABLE demo_table 
            ADD CONSTRAINT pk PRIMARY KEY (col1, col2);

--Ändern des Typs:
ALTER TABLE demo_table COLUMN;

