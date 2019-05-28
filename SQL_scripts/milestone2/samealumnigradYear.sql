DELIMITER $$
CREATE PROCEDURE AlumGradsameYear(
		IN alumstuid VARCHAR(25))
begin
	select *
	from alumni a left join alum_program ap on a.alumni_id= ap.alumni_id
	where ap.alum_program_grad_year in
		(select ap.alum_program_grad_year
		from alumni a
			inner join alum_program ap on ap.alumni_id = a.alumni_id
		where a.alumni_student_id = alumstuid);

end$$
DELIMITER ;


call AlumGradsameYear('400407')