--TESTING TO SEE IF WE SUCCESSFULLY CREATED THE QUERIES

SELECT * FROM departments;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM employees;

SELECT * FROM salaries;

SELECT * FROM titles;

--TASK 1: SHOW EMPLOYEE NUMBER, LAST NAME, FIRST NAME, SEX, AND SALARY FOR EACH EMPLOYEE
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no;

--TASK 2: LIST FIRST NAME, LAST NAME AND HIRE DATE FOR THOSE WHO WERE HIRED IN 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date like '%1986';

--TASK 3: LIST THE MANAGER FOR EACH DEPARTMENT AND THEIR DEPARTMENT NUMBER & NAME,
--MANAGER EMPLOYEE NUMBER, LAST NAME, AND FIRST NAME
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN dept_manager
	ON dept_manager.emp_no = employees.emp_no
JOIN departments
	ON dept_manager.dept_no = departments.dept_no;

--TASK 4: LIST THE DEPARTMENT OF EACH EMPLOYEE WITH THEIR EMPLOYEE NUMBER, LAST NAME,
--FIRST NAME, AND DEPARTMENT NAME
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
	ON employees.emp_no = dept_emp.emp_no
JOIN departments
	ON dept_emp.dept_no = departments.dept_no;


--TASK 5: LIST FIRST NAME, LAST NAME, AND SEX FOR ALL EMPLOYEES THAT HAVE THE FIRST NAME
--HERCULES AND THEIR LAST NAME BEGINS WITH A B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

--TASK 6: LIST ALL EMPLOYEES IN THE SALES DEPARTMENT ALONG WITH THEIR EMPLOYEE NUMBER,
--FIRST NAME, LAST NAME, AND DEPARTMENT NAME
SELECT dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
JOIN dept_emp
	ON employees.emp_no = dept_emp.emp_no
JOIN departments
	ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

--TASK 7: LIST ALL EMPLOYEES IN THE SALES AND DEVELOPMENT DEPARTMENT
SELECT dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
JOIN dept_emp
	ON employees.emp_no = dept_emp.emp_no
JOIN departments
	ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' or departments.dept_name = 'Development';


--TASK 8: IN DESCENDING ORDER LIST THE FREQUENCY COUNT OF EMPLOYEE LAST NAMES
SELECT last_name, COUNT(last_name) AS Frequency
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;