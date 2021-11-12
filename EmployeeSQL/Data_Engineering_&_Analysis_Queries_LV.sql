--1. List the following details of each employee: employee number, last name, first name, sex, and salary

select * from employees;
select * from salaries;


select * from employees as emp
LEFT JOIN salaries as sal
	on emp.emp_no = sal.emp_no;
	
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, sal.salary
from employees 
LEFT JOIN salaries as sal
	on employees.emp_no = sal.emp_no;
	
--2. List first name, last name, and hire date for employees who were hired in 1986.

select * from employees;
select first_name, last_name, hire_date from employees
Where hire_date between '1986-01-01' and '1986-12-31'
;


--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select dep_1.dept_no, dep_2.dept_name, emp.emp_no, emp.last_name, emp.first_name 
from employees as emp
	JOIN dept_manager as dep_1
	on emp.emp_no = dep_1.emp_no
	JOIN departments as dep_2
	on dep_1.dept_no = dep_2.dept_no
	
	;
	
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d2.dept_name
from employees as e
JOIN dept_emp as d1
	on e.emp_no = d1.emp_no
JOIN departments as d2
	on d1.dept_no = d2.dept_no	
	;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select * from employees
where first_name = 'Hercules' 
	and last_name Like 'B%'
	
	
--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.


select e.emp_no, e.last_name, e.first_name, d2.dept_name
from employees as e
JOIN dept_emp as d1
	on e.emp_no = d1.emp_no
JOIN departments as d2
	on d1.dept_no = d2.dept_no	
Where dept_name = 'Sales'	
	;


--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d2.dept_name
from employees as e
JOIN dept_emp as d1
	on e.emp_no = d1.emp_no
JOIN departments as d2
	on d1.dept_no = d2.dept_no	
Where d2.dept_name = 'Sales' 
OR d2.dept_name = 'Development'
	;


-- select d2.dept_name, count (*)
-- from employees as e
-- JOIN dept_emp as d1
-- 	on e.emp_no = d1.emp_no
-- JOIN departments as d2
-- 	on d1.dept_no = d2.dept_no	
-- Where d2.dept_name = 'Sales'
-- OR d2.dept_name = 'Development'
-- group by d2.dept_name
-- 	;	


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select * from employees;

select last_name, count (*) as count_of_last_names
from employees
group by last_name
order by count_of_last_names desc;


