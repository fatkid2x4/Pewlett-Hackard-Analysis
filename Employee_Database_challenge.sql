-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);
SELECT * FROM departments;

CREATE TABLE employees (
     emp_no INT NOT NULL,
     birth_date DATE NOT NULL, 
	 first_name VARCHAR NOT NULL,
	 last_name VARCHAR NOT NULL,
	 gender VARCHAR NOT NULL,
	 hire_date DATE NOT NULL,
PRIMARY KEY (emp_no)
);

SELECT * FROM employees;


CREATE TABLE dept_manager (
dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_manager;


CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp;


CREATE TABLE titles (
  emp_no INT NOT NULL,
  Title VARCHAR NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
PRIMARY KEY (emp_no, title, from_date) 
);
SELECT * FROM titles;


CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
PRIMARY KEY (emp_no, from_date) 
);
SELECT * FROM salaries;


-- Joining Employees and Titles tables
SELECT employees.emp_no,
	   employees.first_name,
	   employees.last_name,
	   titles.title,
	   titles.from_date, 
	   titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (retirement_titles.emp_no) 
			retirement_titles.emp_no,
			retirement_titles.first_name,
			retirement_titles.last_name,
			retirement_titles.title

INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY retirement_titles.emp_no, retirement_titles.to_date DESC;


--Retireve the number of employees by the most recent title about to retire
Select Count (unique_titles), unique_titles.title
INTO retiring_titles
FROM unique_titles
GROUP BY unique_titles.title
ORDER BY count Desc;

--Deliverable 2: The employees Eligible for hte Mentorship Program
--Create mentorship-eligibility table with current employees in born in 1965
SELECT DISTINCT ON (employees.emp_no)
			employees.emp_no,
			employees.first_name,
			employees.last_name,
			employees.birth_date,
			dept_emp.from_date,
			dept_emp.to_date,
			titles.title
INTO mentorship_eligibility
FROM employees
INNER JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
INNER JOIN titles
ON (employees.emp_no = titles.emp_no)
WHERE (dept_emp.to_date = '9999-01-01')
AND (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no
