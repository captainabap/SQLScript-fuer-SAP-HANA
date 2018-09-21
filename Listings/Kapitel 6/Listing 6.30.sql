-- Listing 6.30.sql
-- Beispiel für den Zugriff auf ein Array in einer Datenbanktabelle

CREATE COLUMN TABLE array_demo(
    keycol INT ,
    namen NVARCHAR(30) ARRAY 
);
INSERT INTO array_demo VALUES( 1, 
                               ARRAY ('Jörg', 
                                      'Roland', 
                                      'Brandeis')
                               );
INSERT INTO array_demo VALUES( 2, 
                               ARRAY ('Peter', 
                                      'Maier')
                               );
INSERT INTO array_demo VALUES( 3, 
                               ARRAY ('Rotkäpchen')
                               );
SELECT keycol,
       namen[1],                  --Erstes Element
       namen[cardinality(namen)]  --Letztes Element
       FROM array_demo;
DROP TABLE array_demo;
