-- Listing 7.13.sql
-- Zuweisung von OLD und NEW an lokale Variablen
 
CREATE TRIGGER rp_update AFTER UPDATE 
       ON rechnungspositionen
       REFERENCING NEW ROW ls_new 
                   OLD ROW ls_old
       FOR EACH ROW
...
