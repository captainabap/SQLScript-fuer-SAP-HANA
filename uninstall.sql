/* Dieser Code löscht alle Datenbankobjekte, die mit den anderen SQL-Skripten angelegt wurden*/
DROP TABLE benutzer;

DROP TABLE projekte;

DROP TABLE aufgaben;

DROP TABLE STATUS;

DROP TABLE status_text;

DROP TABLE aufgaben_log;

DROP TABLE bw_daten;

DROP TABLE farben;

DROP TABLE groessen;

DROP TABLE team_text;

DROP TABLE error_log;

DROP PROCEDURE statustexte;

DROP FUNCTION udf_statustexte;

DROP FUNCTION udf_aufgaben_in_status;

DROP FUNCTION udf_benutzername;

DROP FUNCTION udf_int_min;

DROP FUNCTION udf_int_max;

DROP FUNCTION udf_name;

DROP FUNCTION udf_tage;

DROP PROCEDURE write_error_log;

DROP PROCEDURE show_error_log;

DROP PROCEDURE projektaufgaben_schliessen;

DROP TYPE ID_TEXT;
