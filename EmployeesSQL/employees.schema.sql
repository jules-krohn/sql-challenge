drop table if exists salaries
DROP table if exists employees
DROP table if exists dept_manager
drop table if exists dept_emp
drop table if exists departments
drop table if exists titles

create table titles (
title_id varchar(5) not null Primary key,
title varchar(30) not null);

create table employees (
emp_no int not null primary key,
emp_title_id varchar(5) references titles(title_id),
birth_date date,
first_name varchar(30),
last_name varchar(30),
sex varchar(1),
hire_date date
);

create table salaries (
emp_no int not null references employees(emp_no),
salary int);

create table departments (
dept_no varchar(5) primary key,
dept_name varchar(30));

create table dept_manager (
dept_no varchar(5) references departments(dept_no),
emp_no int not null);

create table dept_emp (
emp_no int references employees(emp_no),
dept_no varchar(5) references departments(dept_no));

