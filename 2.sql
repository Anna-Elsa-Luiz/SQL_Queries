create database anna;
use anna;

create table Student(
student_id int,
student_code varchar(20),
first_name varchar(20),
last_name varchar(20),
subjects varchar(20),
marks float,
primary key(student_id) );

insert into Student values
(1,"SM20","Anna","Elsa","Maths",98.5),
(2,"SM21","Ann","Roy","Maths",90.5),
(3,"SM22","Aman","Luiz","Maths",92.0),
(4,"SM23","Anhel","jolly","Maths",85.0),
(5,"SM24","Arun","Mathew","Maths",100.0),
(6,"SM25","Akhil","Krishna","Maths",98.5);

drop table Student;

call ranked_students();

call ranked_students(96);

call get_student(4);

call ranked_students(99);

call top_marks(@output);
select @output;

set @anna;
set @anna = 'SM20';

call display_marks(@anna);

select @anna;

select * from Student;
idx_firstname
desc student;

create index idx_firstname
on Student(first_name);

select * from Student where first_name = "Anna";

alter table Student
drop index idx_firstname;

select * from Student;
##views 

create view Student_basic_info as 
select student_code,first_name,last_name
from Student;

select * from  Student_basic_info;
