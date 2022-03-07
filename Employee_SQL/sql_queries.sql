/*1. List the following details of each employee: employee number, last name, first name, sex, and salary.*/
select e.emp_no, last_name, first_name, sex, salary
from employees as e
left join salaries as s on e.emp_no = s.emp_no

/*2. List first name, last name, and hire date for employees who were hired in 1986.*/
select first_name, last_name, hire_date
from employees
where hire_date like '%1986%'

 /*3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.*/
select dm.dept_no, d.dept_name, dm.emp_no, last_name, first_name
from departments as d
join dept_manager as dm on d.dept_no = dm.dept_no
join employees as e on dm.emp_no = e.emp_no
order by dept_no 

/*4. List the department of each employee with the following information: employee number, last name, first name, and department name.*/
select de.emp_no, e.last_name, first_name, dept_name
from employees as e
join dept_emp as de on de.emp_no = e.emp_no
join departments as d on d.dept_no = de.dept_no 

/*5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."*/
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and LEFT(last_name,1) = 'B' 

/*6. List all employees in the Sales department, including their employee number, last name, first name, and department name.*/
select e.emp_no, last_name, first_name, dept_name
from employees as e
join dept_emp as de on de.emp_no = e.emp_no
join departments as d on d.dept_no = de.dept_no
where dept_name = 'Sales' 

/*7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.*/
select e.emp_no, last_name, first_name, dept_name
from employees as e
join dept_emp as de on de.emp_no = e.emp_no
join departments as d on d.dept_no = de.dept_no
where dept_name = 'Sales' or dept_name = 'Development'

 /*8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.*/
select last_name, count(last_name) as frequency
from employees
group by last_name
order by count(last_name) desc