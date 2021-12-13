use `db_university_schema`;

insert into`departments`(`name`, `address`, `phone` ) values('Storia', 'corso Magenta 11, Milano', '0293875474');
insert into`departments`(`name`, `address`, `phone`) values('Medicina', 'via Nazario Sauro 30, Milano', '0253875374');
insert into`departments`(`name`, `address`, `phone`) values('Lingue', 'corso Como 4, Milano', '0293875674');

insert into`degrees`(`name`, `address`, `departments_id`) values('Laurea in Storia Greca', 'corso magenta 11, Milano', 1);
insert into`degrees`(`name`, `address`, `departments_id`) values('Laurea in Cardiologia', 'via Nazario sauro, Milano', 2);

insert into insert into`student`(`name`,`surname`, `date_of_birth`,`fiscal_code`,`enrolment_date`, `registration_number`, `degrees_id`) values('Mario', 'Rossi', '09/07/1993', 'MRNRSS8776GTRG45', '13/12/2021', '16786', 1);
insert into insert into`student`(`name`,`surname`, `date_of_birth`,`fiscal_code`,`enrolment_date`, `registration_number`, `degrees_id`) values('Laura', 'Bianchi', '03/05/1995', 'LRBNS8776GTRG65', '11/11/2021', '16785', 2);

