create table departments(
dept_no varchar,
dept_name varchar
);

create table titles(
emp_no integer,
title varchar(20),
from_date varchar(10),
to_date date
);

create table employees(
emp_no int,
birth_date varchar(10),
first_name varchar(20),
last_name varchar(20),
gender varchar(5),
hire_date varchar(10));

create table dept_emp(
emp_no integer,
dept_no varchar,
from_date date,
to_date date);

create table dept_manager(
dept_no varchar,
emp_no integer,
from_date date,
to_date date);

create table salaries(
emp_no integer,
salary integer,
from_date date,
to_date date);

drop table salaries;
drop table departments;
drop table dept_emp;
drop table dept_manager;
drop table employees;
drop table titles;
