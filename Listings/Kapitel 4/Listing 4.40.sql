-- Listing 4.40.sql
-- Beispiel für die bitweise Verarbeitung von Binärdaten

CREATE TABLE binaer(text NVARCHAR(50),
                        wert int);
INSERT INTO binaer VALUES ('Zahl 248', 248 );
INSERT INTO binaer VALUES ('Zahl 31', 31 );
INSERT INTO binaer VALUES ('XOR(248, 31)', BITXOR(248, 31));
INSERT INTO binaer VALUES ('AND(248, 31)', BITAND(248, 31));
INSERT INTO binaer VALUES ('OR(248, 31)' , BITOR(248, 31));

SELECT text,
       udf_int_as_bit_string(wert)
FROM binaer;

DROP TABLE binaer;
