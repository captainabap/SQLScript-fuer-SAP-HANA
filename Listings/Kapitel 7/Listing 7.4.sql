-- Listing 7.4.sql
-- Beispiel für einen zusammengesetzten Primärschlüssel

CREATE TABLE test_composite_key (a INT, 
                                 b INT,
                                 c INT,
                                 PRIMARY KEY(a, b));
