create database`db_university_schema`;
use`db_university_schema`;

create table`departments` (
   `id`INT not null auto_increment,
   `name`VARCHAR(255) not null,
   `address`VARCHAR(255) not null,
   `phone`INT not null,
   `email`VARCHAR(100),
   `website`VARCHAR(100),
   `head_of_department`VARCHAR(255),
   primary key(`id`)
);

create table`degrees` (
   `id`INT not null auto_increment,
   `name`VARCHAR(255) not null,
   `address`VARCHAR(255) not null,
   `email`VARCHAR(100),
   `website`VARCHAR(100),
   `level`VARCHAR(100),
   `departments_id`INT not null,
   primary key(`id`),
   foreign key(`departments_id`) references departments(`id`)
);

create table`student`(
   `id`INT not null auto_increment,
   `name`VARCHAR(255) not null,
   `surname`VARCHAR(255) not null,
   `date_of_birth`DATE not null,
   `fiscal_code`VARCHAR(16) not null,
   `enrolment_date`DATE not null,
   `registration_number`INT not null,
   `email`VARCHAR(100),
   `degrees_id`INT not null,
   primary key(`id`),
   foreign key(`degrees_id`) references degrees(`id`) 
);

create table`courses`(
   `id`INT not null auto_increment,
   `name`VARCHAR(255) not null,
   `description`VARCHAR(255),
   `website`VARCHAR(100),
   `cfu`INT not null,
   `degrees_id` INT not null,
   primary key(`id`),
   foreign key(`degrees_id`) references degrees(`id`)
);

create table`teachers`(
   `id`INT not null auto_increment,
   `name`VARCHAR(255) not null,
   `surname`VARCHAR(255) not null,
   `phone`INT,
   `email`VARCHAR(100),
   `office_address`VARCHAR(100),
   primary key(`id`)
);

create table`exams`(
   `id`INT not null auto_increment,
   `date`DATE not null,
   `hour`TIME not null,
   `location`VARCHAR(100) not null,
   `address`VARCHAR(100) not null,
   `courses_id`INT not null,
   primary key(`id`),
   foreign key(`courses_id`) references courses(`id`)
);

create table`student_exams`(
   `student_id`INT not null,
   `exams_id`INT not null,
   primary key(`student_id`, `exams_id`),
   foreign key(`student_id`) references student(`id`),
   foreign key(`exams_id`) references exams(`id`)
);

create table`courses_teachers`(
   `courses_id`INT not null,
   `teachers_id`INT not null,
   primary key(`courses_id`,`teachers_id`),
   foreign key(`courses_id`) references courses(`id`),
   foreign key(`teachers_id`) references teachers(`id`)
);