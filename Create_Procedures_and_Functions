/* Prozeduren und Funktionen anlegen */

CREATE PROCEDURE statustexte(
		IN iv_sprache VARCHAR(2), 
		OUT et_result TABLE (
			id INT,
			status_text NVARCHAR(20)
		)
	)
AS
BEGIN
	et_result = SELECT id, 
				status_text
			FROM status_text
			WHERE sprache = iv_sprache;
END;

CREATE FUNCTION udf_statustexte (iv_sprache VARCHAR(2))
RETURNS TABLE ( id INT,
                status_text VARCHAR(20) )
AS BEGIN
   RETURN SELECT id,
                 status_text
   FROM status_text
   WHERE sprache = :iv_sprache;
END;


create function udf_benutzername(iv_id int)
returns rv_name nvarchar(42)
as begin
select nachname || ', ' || vorname into rv_name from benutzer where id = :iv_id;
end;

create function udf_aufgaben_in_status(iv_status int)
returns table(id int, bearbeiter int, status int, titel varchar(20))
as begin
return select id, bearbeiter, status, titel from aufgaben where status = :iv_status;
end;

CREATE FUNCTION udf_name ( iv_vorname NVARCHAR(20),
                           iv_nachname NVARCHAR(20) )
RETURNS rv_name NVARCHAR(42)
AS
BEGIN
   rv_name = :iv_nachname || ', ' || :iv_vorname;
END;


create function udf_int_min(iv_wert1 int, iv_wert2 int)
returns rv_result int
as begin
select case when :iv_wert1 < :iv_wert2
                    then :iv_wert1
                    else :iv_wert2 end into rv_result from dummy;
end;

create function udf_int_max(iv_wert1 int, iv_wert2 int)
returns rv_result int
as begin
select case when :iv_wert1 > :iv_wert2
                    then :iv_wert1
                    else :iv_wert2 end into rv_result from dummy;
end;

create function udf_tage(id int, iv_von date, iv_bis date)
returns table (id int, datum date)
as begin
 return SELECT :id as id,
               GENERATED_PERIOD_START as datum 
               FROM SERIES_GENERATE_DATE( INCREMENT_BY => 'INTERVAL 1 DAY',
                                          MIN_VALUE => :iv_von,
                                          MAX_VALUE => :iv_bis )
        UNION
        SELECT :ID as id,
               :iv_bis as datum
               from dummy;
end;

create procedure projektaufgaben_schliessen(in iv_projekt int)
as begin
 update aufgaben set status = 5 where projekt = :iv_projekt;
end;

CREATE PROCEDURE write_error_log (
   IN iv_error_code INT,
   IN iv_error_message NVARCHAR(500)
   )
AS
BEGIN
   BEGIN
      AUTONOMOUS TRANSACTION

      INSERT INTO error_log (
         zeitstempel,
         fehlercode,
         nachricht
         )
      VALUES (
         current_timestamp,
         :iv_error_code,
         :iv_error_message
         );
   END;
END;

create procedure show_error_log(in iv_seconds int default 10)
as begin
    select * from error_log where zeitstempel > add_seconds( current_timestamp, -1 * iv_seconds ) order by id desc;
end;
