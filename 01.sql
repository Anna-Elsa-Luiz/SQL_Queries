create database Data;
use Data;

create table employee(emp_id int,
			          first_name varchar(50),
                      last_name varchar(50),
					  Date_of_Birth date,
                      Hire_date date ,
                      position varchar(30),
                      salary float );
                      
select * from employee;  

insert into employee value(1,"Anna Elsa","Luiz",
"2000-01-23","2024-01-23","Data Scientist",
100000.0);  

insert into employee value(2,"Athira ","M Nai",
"2000-09-2","2023-07-23","Data Engineer",
100000.0);

insert into employee value(3,"Amaaan","M N",
"2000-11-17","2024-01-31","Data Scientist",
100000.0);  

insert into employee value(4,"Aravind","Raman",
"2000-12-01","2024-11-11","Data Scientist",
100000.0);  

select * from employee;  

select first_name , last_name from employee;

select emp_id , first_name , last_name from employee 
  where salary>20000;
  
select emp_id , first_name , last_name from employee 
  where salary>200000;  
  
select * from employee where salary>20000; 

select * from employee order by first_name ASC;
SET SQL_SAFE_UPDATES = 0;

update employee set salary=80000 where first_name = "Anna Elsa"; 

alter table employee add dept varchar(20);
select * from employee;

delete from employee where emp_id = 2;

drop table employee;

select * from employee;



