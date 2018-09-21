-- Listing 7.12.sql
-- Beispiel eines Triggers für eine automatisches Änderungsprotokollierung
 
CREATE SEQUENCE lognr; --Technischer Schlüssel des Log

CREATE TABLE rechnungspositionen(
    rechnungsnr INT,
    position    INT, 
    produkt     NVARCHAR(30),
    menge       INT,
    betrag      DEC(17,2),
    waehrung    VARCHAR(5),
    primary key (rechnungsnr, position)
);
CREATE TABLE rp_log(
    log_nr      INT,
    rechnungsnr INT,
    position    INT,
    benutzer    VARCHAR(80),
    datum       DATE,
    zeit        TIME,
    action      VARCHAR(1)
);
--Trigger für das Einfügen
CREATE TRIGGER rp_insert AFTER INSERT 
       ON rechnungspositionen
       REFERENCING NEW ROW ls_new 
       FOR EACH ROW 
BEGIN
    INSERT INTO rp_log VALUES( lognr.nextval,
                               :ls_new.rechnungsnr,
                               :ls_new.position,
                               current_user,
                               current_date,
                               current_time,
                               'I');
END;

--Trigger für das Aktualisieren von Daten
CREATE TRIGGER rp_update AFTER UPDATE 
       ON rechnungspositionen
       REFERENCING NEW ROW ls_new 
       FOR EACH ROW 
BEGIN
    INSERT INTO rp_log VALUES( lognr.nextval,
                               :ls_new.rechnungsnr,
                               :ls_new.position,
                               current_user,
                               current_date,
                               current_time,
                               'U');
END;
    
INSERT INTO rechnungspositionen 
VALUES (1, 10, 'Schokolade', 1, 1.99, 'EUR');

INSERT INTO rechnungspositionen 
VALUES (1,20, 'Espresso Kaffeebohnen', 1, 13.99, 'EUR');

UPDATE rechnungspositionen 
   SET betrag = '12.99'
   WHERE rechnungsnr = 1
     AND position    = 20;
    
SELECT * FROM rp_log;
