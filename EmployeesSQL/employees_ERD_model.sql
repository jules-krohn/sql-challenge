titles
--
title_id varchar(5)
title varchar(30)

employees
--
emp_no int FK >- dept_manager.emp_no
emp_title_id varchar(5) FK >- titles.title_id
birth_date date
first_name varchar(30)
last_name varchar(30)
sex varchar(1)
hire_date date

salaries
--
emp_no int FK >- employees.emp_no
salary int

departments
--
dept_no varchar(5)
dept_name varchar(30)

dept_manager
--
dept_no varchar(5) FK >- departments.dept_no
emp_no int

dept_emp
--
emp_no int FK >- employees.emp_no
dept_no varchar(5) FK >- departments.dept_no

