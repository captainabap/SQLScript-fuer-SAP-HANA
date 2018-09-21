-- Listing 3.5.sql
-- Beispiel für die Verwendung des Korrelationsnamens in der Feldliste



SELECT tab.table_name,   --Spalte table_name nicht eindeutig!
       col.column_name
FROM m_cs_tables AS tab
   INNER JOIN m_cs_columns AS col
   ON tab.table_name = col.table_name;
