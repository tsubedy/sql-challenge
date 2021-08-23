-- The follwing SQL querries were used to answer the given questions: 

--List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s
ON e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31'
ORDER BY hire_date DESC;

--List the manager of each department with the following information: department number, department name, the manager’s employee number, last name, first name.

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
FROM dept_manager as dm
JOIN employees as e
ON dm.emp_no = e.emp_no
JOIN departments as d
ON dm.dept_no = d.dept_no
ORDER BY d.dept_name ASC;

--List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
ORDER BY d.dept_no DESC;

--List first name, last name, and sex for employees whose first name is “Hercules” and last names begin with “B.”

SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name ASC;

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de 
ON e.emp_no = de.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de 
ON e.emp_no = de.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
ORDER BY d.dept_name ASC;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(emp_no) as employees_share_each_last_name
FROM employees
GROUP BY last_name
ORDER BY employees_share_each_last_name DESC;



-- BONUS PART
CREATE VIEW avg_salaries_by_title AS
SELECT round(avg(s.salary)) as avg_salary, t.title
FROM titles t
JOIN employees e
ON t.title_id = e.emp_title_id
JOIN salaries s
ON e.emp_no = s.emp_no
GROUP BY t.title;

--Obtaining info for employee with emp_no 499942 including employee number, last name, first name, and department name, hire date an salary.
CREATE VIEW epilogue AS
SELECT e.emp_no, e.last_name, e.first_name, e.hire_date, d.dept_name, s.salary
FROM employees as e
JOIN dept_emp as de 
ON e.emp_no = de.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
JOIN salaries as s
ON e.emp_no = s.emp_no
WHERE s.emp_no = '499942';
