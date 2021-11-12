-- -- Create departments table 
DROP TABLE departments

CREATE TABLE departments (
	dept_no VARCHAR (30) PRIMARY Key,  
	dept_name VARCHAR (30)
	
)

select * from departments

-- -- Create titles table 
CREATE TABLE titles (
	title_id VARCHAR (30) PRIMARY Key,  
	title VARCHAR (30)
	
)

select * from titles


-- Create employees table 

CREATE TABLE employees (
  emp_no VARCHAR (30) PRIMARY KEY,
  emp_title_id VARCHAR (30), 
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
  birth_date date ,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  sex VARCHAR(2),	
  hire_date date	
	
);


select * from employees

-- -- Create salaries table 

CREATE TABLE salaries (
	
	emp_no VARCHAR (30),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary integer 


);

select * from salaries

-- -- Create dept_manager table

CREATE TABLE dept_manager (
	dept_no VARCHAR (30),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no VARCHAR (30),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

);

select * from dept_manager;

-- -- Create dept_emp table

CREATE TABLE dept_emp (
	emp_no VARCHAR (30),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR (30),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	
);

select * from dept_emp;


--NOTE: Imported data from each CSV file (total of 6) into the corresponding SQL table with the "Import/Export" PostgreSQL functionality

