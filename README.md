# SQLScript für SAP HANA
Hier finden Sie die Listings und das Demo-Datenmodell für mein Buch SQLScript für SAP HANA. Leider haben sich in meinem Buch (vor allem in den Listings) ein paar kleine Fehler eingeschlichen. Die jeweiligen Listings in dem entsprechenden Verzeichnis sind auf dem aktuellen Stand.
## Korrekturen für mein Buch
* Seite 71, Listing 2.8: Die drei SELECT-Anweisungen beziehen sich auf die gleiche Tabelle, das ist falsch. Statt dessen soll natürlich LT_TAB1, LT_TAB2 und LT_TAB3 abgefragt werden. [Hier die korrigierte Version](https://github.com/captainabap/SQLScript-fuer-SAP-HANA/blob/master/Listings/Kapitel%202/Listing%202.8.sql)
* Seite 79, Listing 2.16: Es fehlt ein Leerzeichen nach dem DO. [Hier die korrekte Version](https://github.com/captainabap/SQLScript-fuer-SAP-HANA/blob/master/Listings/Kapitel%202/Listing%202.16.sql)
* Seite 156, Listing 4.1: Beim Setzen des Buches ist bei der zweiten INSERT-Anweisung das doppelte chinesische Zeichen durch ein einfaches Zeichen ersetzt worden. [Hier die korrekte Version](https://github.com/captainabap/SQLScript-fuer-SAP-HANA/blob/master/Listings/Kapitel%204/Listing%204.1.sql)
* Seite 417: Der Link zu dieser Seite wurde leider beim Setzten umgebrochen, wodurch ein Bindestrich eingefügt wurde. Dieser darf nicht mit eingegeben werden.  Richtig ist dieser Link: https://github.com/captainabap/SQLScript-fuer-SAP-HANA/ , aber das wissen Sie ja offensichtlich bereits. 
* Seite 363: Für das Setzen des Parameters, wie es im Buch beschrieben ist, müssen Sie mit den HANA-Tools der Eclipse Umgebung (aka. SAP HANA Studio) mit dem entsprechenden SAP HANA System verbunden sein. Da das nicht immer möglich ist, z.B. weil die neueren Versionen der Tools die Cloud-Verbindung nicht mehr unsterstützen, habe ich ein alternatives Vorgehen über die SQL-Konsole in meinem [Blog](https://www.brandeis.de/blog/sqlscript-debugging-with-the-web-based-development-workbench/) beschrieben.
* Seite 374: Die Aussage im grauen Kasten "Missverständliche Option" gilt nicht mehr für aktuelle Systemstände. Dort funktioniert das Debuggen auch mit der Option "Seriell im Dialogprozess (für Debugging)". 
* Seite 222, Listing 6.4: Die Zeile "DECLARE EXIT HANDLER" muss gelöscht werden, sonst funktioniert das Beispiel nicht. 


## Installation des Demo-Datenmodells
Hinter den folgenden Links stecken die SQL Skripte, die das Datenmodell anlegen und mit Daten füllen. Bitte kopieren Sie den Inhalt der einzelnen Skripte in die Zwischenablage und öffnen dann eine SQL-Konsole für das Datenbankschema Ihrer Wahl, zum Beispiel das persönliche Schema Ihres Datenbanknutzers. Dort fügen Sie das Skript ein und führen es aus. 

* [Datenbanktabellen anlegen](https://raw.githubusercontent.com/captainabap/Einstieg-in-SQLScript/master/Install/Install_01_Create_Tables.sql)
* [Prozeduren und Funktionen anlegen](https://raw.githubusercontent.com/captainabap/Einstieg-in-SQLScript/master/Install/Install_02_Create_Procedures_and_Functions.sql)
* [Datenbanktabellen füllen](https://raw.githubusercontent.com/captainabap/Einstieg-in-SQLScript/master/Install/Install_03_Fill_with_Data.sql)
* [Installation überprüfen](https://raw.githubusercontent.com/captainabap/Einstieg-in-SQLScript/master/Install/Install_04_Check_Install_Result.sql)

Nach jedem Skript bitte in der Konsolenausgabe prüfen, ob alles ohne Fehler durchgelaufen ist. Das letzte Skript fragt die Anzahl der Zeilen in den jeweiligen Tabellen ab. Damit können Sie prüfen, ob die Daten korrekt geladen wurden. 

Sie können die Skript Dateien auch lokal speichern und nach belieben anpassen. Wenn Ihnen beispielsweise die Testdaten zu viele sind, können Sie das entsprechende Skript einfach anpassen. Um die angelegten Datenbankobjekte wieder zu Löschen, gibt es auch ein passendes Skript:

[Datenbanktabellen, Prozeduren und Funktionen löschen](https://raw.githubusercontent.com/captainabap/Einstieg-in-SQLScript/master/Install/uninstall.sql)


## Übersicht über das Datenmodell

![Übersicht](https://github.com/captainabap/Einstieg-in-SQLScript/blob/master/A02_Demo_Datenmodell.png)
