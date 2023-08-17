-- List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s on
employees.emp_no=salaries.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986.
select  e.first_name, e.last_name, e.hire_date
from employees e
where hire_date between '1986-01-01' and '1986-12-31'

-- List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.

select dept_manager.dept_no, departments.dept_name, e.emp_no, e.first_name, e.last_name,  
from employees e
join dept_manager on
e.emp_no=dept_manager.emp_no
join departments on
departments.dept_no=dept_manager.dept_no
where emp_title_id = 'm0001'

--List the department number for each employee along with that employee’s employee number, 
--last name, first name, and department name.

select dept_emp.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp on
e.emp_no=dept_emp.emp_no
join departments d on
d.dept_no=dept_emp.dept_no

--List first name, last name, and sex of each employee whose first name
--is Hercules and whose last name begins with the letter B.

select e.first_name, e.last_name, e.sex 
from employees e
where first_name = 'Hercules' and last_name like 'B%';

