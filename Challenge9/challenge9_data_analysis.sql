--List the employee number, last name, first name, sex, and salary of each employee.
SELECT DISTINCT employees.emp_no, last_name, first_name, sex, salary
FROM employees
INNER JOIN Salaries ON employees.emp_no = salaries.emp_no
;
--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT *
FROM employees
WHERE hire_date >= '1986/01/01' and hire_date < '1987/01/01'
ORDER BY last_name ASC
;
--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT DISTINCT dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM dept_manager, departments, employees
WHERE dept_manager.dept_no = departments.dept_no AND dept_manager.emp_no = employees.emp_no
ORDER BY dept_manager.dept_no ASC
;
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT DISTINCT dept_emp.emp_no, last_name, first_name, departments.dept_name
FROM dept_emp, employees, departments
WHERE dept_emp.emp_no = employees.emp_no AND dept_emp.dept_no= departments.dept_no
ORDER BY departments.dept_name, last_name
;
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT *
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%'
ORDER BY last_name
;
--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT DISTINCT dept_emp.emp_no, last_name, first_name, departments.dept_name
FROM dept_emp, employees, departments
WHERE dept_emp.emp_no = employees.emp_no AND dept_emp.dept_no= departments.dept_no AND departments.dept_name='Sales'
ORDER BY last_name, first_name
;
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).