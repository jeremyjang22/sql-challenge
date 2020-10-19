--DELETING AND CREATING TABLES

--drop tables, if they exist
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

CREATE TABLE departments(
	dept_no VARCHAR(5) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(5) NOT NULL
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(5) NOT NULL,
	emp_no INT PRIMARY KEY
);

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id CHAR(5) NOT NULL,
	birth_date VARCHAR(10) NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex CHAR(1) NOT NULL,
	hire_date VARCHAR(10) NOT NULL
);

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL
);

CREATE TABLE titles(
	title_id CHAR(5) PRIMARY KEY,
	title VARCHAR(20) NOT NULL
);