--Die Tabelle DUMMY zum Testen von Ausdrücken

-- Test mit DUMMY
SELECT TO_DATS('2016-01-01') FROM DUMMY;

-- Der gleiche Test mit einem anonymen Block
DO (OUT rv_result NVARCHAR(10) =>?)
BEGIN
   rv_result = TO_DATS('2016-12-31');
END;