Create view topFiveDonation
as
select r.alumni_id, a.alumni_name, a.alumni_student_id, r.total_donate
from  
	(select d.total_donate, d.alumni_id, RANK() OVER (
										ORDER BY  d.total_donate desc
											) donate_rank
	from
		(select sum(alumni_donation_amount) as total_donate, alumni_id 
		from alumni_donation
		group by alumni_id
		order by alumni_id) d ) r inner join alumni a on r.alumni_id =a.alumni_id
where r.donate_rank <=5;

