CREATE SCHEMA `segr5300` ;

use `segr5300`;

# Create the department table
Create table department
	(	department_id	nvarchar(6)	NOT NULL,
		department_name varchar(36),
		PRIMARY KEY (department_id)    
    );
    
# Create the program category table
Create table program_categories
	(	program_categories_id	nvarchar(6)	NOT NULL,
		program_categories_name	varchar(36),
        PRIMARY KEY (program_categories_id)    
    )
    
# Create the new table -- Program
Create table program
	(	program_id	nvarchar(6)	NOT NULL,
		program_name	varchar(36),
        program_begin_date	date,
        department_id	nvarchar(6),
        program_categories_id	nvarchar(6),
        PRIMARY KEY (program_id),
        foreign key(department_id) references department(department_id),
        foreign key(program_categories_id) references program_categories(program_categories_id)
    )
    
# Create the new table -- Alumni
Create table alumni
	(	alumni_id			nvarchar(6)	NOT NULL,
		alumni_student_id	nvarchar(10),
        alumni_name			varchar(36),
        alumni_emailID		varchar(50),
        alumni_contact_no	nvarchar(10),
        alumni_postal_add	varchar(50),
        alumni_postal_city	varchar(30),
        alumni_postal_coun	varchar(20),
        alumni_postal_zip	int(6),
        alumni_company		varchar(30),
        PRIMARY KEY (alumni_id)
    )
    
# Create the new table -- Events
Create table all_events
	(	all_events_id			nvarchar(6)	NOT NULL,
		all_events_name			varchar(36),
        all_events_start_time	datetime,
        all_events_end_time		datetime,
        all_events_add			varchar(50),
        all_events_organized_by	nvarchar(6),
        PRIMARY KEY (all_events_id)
    )
    
# Create the new table -- Events
Create table alum_program
	(	alum_program_id		nvarchar(6)	NOT NULL,
		alumni_id			nvarchar(6)	NOT NULL,
        program_id			nvarchar(6)	NOT NULL,
        alum_program_grad_year	year,
        PRIMARY KEY (alum_program_id),
        foreign key(alumni_id) references alumni(alumni_id),
        foreign key(program_id) references program(program_id)
    )
    
# Create the new table -- Events
Create table alum_events
	(	alum_events_id	nvarchar(6)	NOT NULL,
		all_events_id	nvarchar(6)	NOT NULL,
        alumni_id		nvarchar(6)	NOT NULL,
        attended		boolean,
        PRIMARY KEY (alum_events_id),
        foreign key(all_events_id) references all_events(all_events_id),
        foreign key(alumni_id) references alumni(alumni_id)
    )    
    
# Create the new table -- Events
Create table alumni_donation
	(	alumni_donation_id		nvarchar(6)	NOT NULL,
		alumni_donation_memo	varchar(50),
        alumni_donation_amount	decimal(13,2),
        alumni_id				nvarchar(6)	NOT NULL,
        PRIMARY KEY (alumni_donation_id),
        foreign key(alumni_id) references alumni(alumni_id)
    )