create database digi;

use digi;

create table customer(
customer_Id int primary key,
gender varchar(20),
age int ,
Annual_income float,
Spending_score int );

select * from mall_customers;

SELECT `mall_customers`.`CustomerID`,
    `mall_customers`.`Genre`,
    `mall_customers`.`Age`,
    `mall_customers`.`Annual_Income_(k$)`,
    `mall_customers`.`Spending_Score`
FROM `digi`.`mall_customers`;

drop table `mall_customers`;

CREATE TABLE `mall_customers` (
  `CustomerID` int primary key,
  `Genre` text,
  `Age` int ,
  `Annual_Income_(k$)` int ,
  `Spending_Score` int 
) ;

select * from mall_customers;



