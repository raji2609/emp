drop database if exists employee;
create database employee;
use employee;

create table employee (
    empid int primary key,
    empname varchar(50),
    department varchar(50),
    salary int
);
INSERT INTO employee (empid, empname, department, salary) VALUES
(1, 'Raj', 'IT', 8000),
(2, 'Priya', 'HR', 15000),
(3, 'Kumar', 'Finance', 9000);
create view emp_salary_status as
select 
    empid,
    empname,
    department,
    
    salary,
    case 
        when salary < 10000 then 'low'
        else 'moderate'
    end as sal_status
from employee;
select * from emp_salary_status;