-- List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s on
e.emp_no=s.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986.
select  e.first_name, e.last_name, e.hire_date
from employees e
where hire_date between '1986-01-01' and '1986-12-31'

-- List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.
select e.first_name, e.last_name, dept_manager.dept_no, departments.dept_name, e.emp_title_id 
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

--List each employee in the Sales department, including their employee number, 
--last name, and first name.

-- select and join data from appropriate tables
select e.emp_no, e.last_name, e.first_name, departments.dept_name
from employees e
join dept_emp d on
e.emp_no=d.emp_no
join departments on
d.dept_no=departments.dept_no
-- d007 is the sales department id 
where d.dept_no = 'd007'

--List each employee in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, departments.dept_name
from employees e
join dept_emp d on
e.emp_no=d.emp_no
join departments on
d.dept_no=departments.dept_no
where d.dept_no = 'd007' or d.dept_no = 'd005'

--List the frequency counts, in descending order,
--of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name)
from employees e
group by last_name
order by last_name desc
