# SQLScript für SAP HANA
Hier finden Sie die Listings und das Demo-Datenmodell für mein Buch SQLScript für SAP HANA. Leider haben sich in meinem Buch (vor allem in den Listings) ein paar kleine Fehler eingeschlichen. Die jeweiligen Listings in dem entsprechenden Verzeichnis sind auf dem aktuellen Stand.
## Korrekturen für mein Buch
* Seite 71, Listing 2.8: Die drei SELECT-Anweisungen beziehen sich auf die gleiche Tabelle, das ist falsch. Statt dessen soll natürlich LT_TAB1, LT_TAB2 und LT_TAB3 abgefragt werden. Die korrigierte Version ist hier: https://github.com/captainabap/SQLScript-fuer-SAP-HANA/blob/master/Listings/Kapitel%202/Listing%202.8.sql
* Seite 79, Listing 2.16: Es fehlt ein Leerzeichen nach dem DO. Hier die korrekte Version: https://github.com/captainabap/SQLScript-fuer-SAP-HANA/blob/master/Listings/Kapitel%202/Listing%202.16.sql
* Seite 156, Listing 4.1: Beim Setzen des Buches ist bei der zweiten INSERT-Anweisung das doppelte chinesische Zeichen durch ein einfaches Zeichen ersetzt worden. 
* Seite 417: Der Link zu dieser Seite wurde leider beim Setzten umgebrochen, wodurch ein Bindestrich eingefügt wurde. Dieser darf nicht mit eingegeben werden.  Richtig ist dieser Link: https://github.com/captainabap/SQLScript-fuer-SAP-HANA/ , aber das wissen Sie ja offensichtlich bereits. 


## Installation
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
