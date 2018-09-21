-- Listing 7.3.sql
-- Beispiel für mehrere UNIQUE-Einschränkungen auf mehreren Spalten

CREATE TABLE test_unique (a INT, 
                          b INT,
                          c INT,
                          UNIQUE(a, b),
                          UNIQUE(b, c));
