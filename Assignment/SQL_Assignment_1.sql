-- Qn 1: ATS

create database DATABASE1;
use DATABASE1;

create table Skill_set(id int not null,Technology varchar(20));

insert into Skill_set values(1,'Data Science'),(1,'Tableau'),(1,'Python'),(1,'SQL'),
                            (2,'Tableau'),(3,'Tableau'),(3,'Python'),(3,'SQL'),
                            (4,'SQL'),(4,'Tableau'),(4,'Python'),(4,'Data Science'),
                            (5,'Data Science'),(5,'SQL'),(5,'Python'),
                            (6,'SQL'),(6,'Tableau');
                     
-- skills required: 'Data Science' ,'Tableau','Python','SQL'                  
-- Query to list all the candidates which posess all the required skills?

select * from Skill_set;

select id from Skill_set where Technology = 'Data Science' and 
       id in (select id from Skill_set where Technology = 'Tableau' and
       id in (select id from Skill_set where Technology = 'Python' and 
       id in (select id from Skill_set where Technology = 'SQL' )));
       

       
       
-- Qn:2 E-Commerce Website 

use DATABASE1;      

create table Product_info(product_id int not null ,Product_name varchar(20));
create table Product_info_likes(user_id int not null,product_id int not null,liked_date date);

insert into Product_info values(1001,'Blog'),(1002,'Youtube'),(1003,'Education'),(1004,'Linkedin'),(1005,'Instagram'),(1006,'Indeed');
insert into Product_info_likes values(1,1001,'2023-01-20'),
                                     (1,1003,'2023-01-12'),
                                     (1,1005,'2023-06-20'),
							         (2,1001,'2023-08-30'),
                                     (3,1005,'2023-11-01'),
                                     (3,1005,'2023-02-06'),
									 (4,1003,'2023-01-31'),
									 (4,1005,'2023-12-20'),
                                     (5,1002,'2023-11-02'),
									 (5,1003,'2023-09-10'),
                                     (5,1001,'2023-01-20'),
                                     (6,1001,'2023-12-30'),
                                     (6,1002,'2023-08-17'),
									 (6,1003,'2023-05-09');
                                      
 
 select distinct product_id from Product_info_likes;
 
 select product_id from Product_info; 
 
 select * from Product_info where  product_id not in (select distinct product_id from Product_info_likes); 