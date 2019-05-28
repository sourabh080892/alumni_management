#
# Analytical queris intergreate to tableau
#
#
# select event information and number of attendancce
/* Add column headers */
SELECT 'Event ID','Event Name','Event address','Event Start Time','Number of Attendance'
Union all
/* Now the actual query */
select ae.all_events_id, ae.all_events_name, ae.all_events_address, ae.all_events_start_time, ale.NoAttendance
from all_events ae inner join 
			(select count(*) as NoAttendance, ales.all_events_id
			from alum_events ales 
			where ales.attended =1
			group by ales.all_events_id) ale 	
        on ae.all_events_id = ale.all_events_id
/* Save the query results to a file */

INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/allevents.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

