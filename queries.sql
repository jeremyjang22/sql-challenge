--DELETING AND CREATING TABLES

--drop tables, if they exist
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

CREATE TABLE departments(
	dept_no VARCHAR(5),
	dept_name VARCHAR(30)
);

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(5)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR,
	dept_name VARCHAR
);

CREATE TABLE employees(
	emp_no INT,
	emp_title_id CHAR(5),
	birth_date VARCHAR(10),
	first_name VARCHAR,
	last_name VARCHAR,
	sex CHAR(1),
	hire_date VARCHAR(10)
);

CREATE TABLE salaries(
	emp_no INT,
	salary INT
);

CREATE TABLE titles(
	title_id CHAR(5),
	title VARCHAR(20)
);


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