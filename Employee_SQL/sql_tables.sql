CREATE TABLE department (
	dept_no VARCHAR not null,
	dept_name VARCHAR not null,
	PRIMARY KEY (dept_no)
	);

CREATE TABLE department_employee (
	emp_no integer not null,
	dept_no VARCHAR not null,
	FOREIGN KEY(dept_no),
	);

CREATE TABLE department_manager (
	dept_no VARCHAR not null,
	emp_no integer not null,
	FOREIGN KEY(dept_no),
	FOREIGN KEY(emp_no)
	);

CREATE TABLE employees (
	emp_no integer not null,
	emp_title_id VARCHAR not null,
	birth_date date not null,
	first_name VARCHAR not null,
	last_name VARCHAR not null,
	sex VARCHAR not null,
	hire_date date not null,
	PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_title_id)
	);

CREATE TABLE salaries (
	emp_no integer not null,
	salary integer not null,
	PRIMARY KEY (emp_no)
	);

CREATE TABLE titles (
	title_id VARCHAR not null,
	title VARCHAR not null,
	PRIMARY KEY (title_id)
	);