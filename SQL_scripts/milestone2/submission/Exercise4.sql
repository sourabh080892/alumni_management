# SEGR5300 MILESTONE 2
# 
# 4. ANALYTIC QUERIES and Integration into TABLEAU or EXCEL
# Group 9: Sanyukta Ghai, Sourabh Gupta, Huy Le
# 

# select event information and number of attendancce
/* Now the actual query */
select ae.all_events_id, ae.all_events_name, ae.all_events_address, ae.all_events_start_time, ale.NoAttendance
from all_events ae inner join 
			(select count(*) as NoAttendance, ales.all_events_id
			from alum_events ales 
			where ales.attended =1
			group by ales.all_events_id) ale 	
        on ae.all_events_id = ale.all_events_id;
##########################################################################################
# aggregate total alumni and donation by department.

select d.department_id, d.department_name,count(a.alumni_id) as no_alumni, sum(ad.alumni_donation_amount) as total_donation
from alumni a inner join alum_program al on a.alumni_id = al.alumni_id
			inner join program p on al.program_id	= p.program_id
            inner join department d on p.department_id = d.department_id
            inner join company c on a.company_id = c.company_id
            inner join alumni_donation ad on ad.alumni_id = a.alumni_id
group by d.department_id,d.department_name;

##########################################################################################
# fetch top 3 cities where donation is maximum
select 	c.city_id, 
		c.city_name,
        SUM(ad.alumni_donation_amount) as 'Total Donation',
        ci_co.no_comp as 'No of Companies',
        ci_al.no_alumni as 'No of Alumni'
from city as c
inner join alumni as a
on c.city_id = a.city_id
inner join alumni_donation as ad
on a.alumni_id = ad.alumni_id
inner join (select c.city_id as 'city_id', COUNT(co.company_name) as 'no_comp'
				from city as c
				inner join alumni as a
				on c.city_id = a.city_id
				inner join company as co
				on a.company_id = co.company_id
				group by c.city_name) as ci_co
on c.city_id = ci_co.city_id 
inner join (select c.city_id as 'city_id', COUNT(a.alumni_id) as 'no_alumni'
				from city as c
				inner join alumni as a
				on c.city_id = a.city_id
				group by c.city_name) as ci_al
on c.city_id = ci_al.city_id
group by c.city_name
order by ci_co.no_comp desc, SUM(ad.alumni_donation_amount) desc
limit 3;

##########################################################################################
# After deciding the city, now we want all the details from that city
select 	c.city_name as 'City Name',
		a.alumni_name as 'Alumni Name',
        a.alumni_emailID as 'Email ID',
        GROUP_CONCAT(ale.all_events_name SEPARATOR ', ') as 'Events Attended',
        p.program_name as 'Program Name',
        ad.alumni_donation_amount as 'Donation Amount',
        co.company_name as 'Company Name'
from city as c
inner join alumni as a
on c.city_id = a.city_id
left outer join alum_events as ae
on a.alumni_id = ae.alumni_id
left outer join all_events as ale
on ae.all_events_id = ale.all_events_id
inner join alum_program as ap
on a.alumni_id = ap.alumni_id
inner join program as p
on ap.program_id = p.program_id
left outer join alumni_donation as ad
on a.alumni_id = ad.alumni_id
left outer join company as co
on a.company_id = co.company_id
group by a.alumni_name;
