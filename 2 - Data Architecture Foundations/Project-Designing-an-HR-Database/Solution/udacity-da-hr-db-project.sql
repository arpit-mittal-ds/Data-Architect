USE dbtest;


-- Dropping tables if they exist.

DROP TABLE IF EXISTS  employee CASCADE;

DROP TABLE IF EXISTS job CASCADE;

DROP TABLE IF EXISTS employee_salary CASCADE;

DROP TABLE IF EXISTS employee_job_hist CASCADE;

DROP TABLE IF EXISTS department CASCADE;

DROP TABLE IF EXISTS state CASCADE;

DROP TABLE IF EXISTS city CASCADE;

DROP TABLE IF EXISTS office CASCADE;

--Creating tables according to the Physical Data Model

-- create table EMPLOYEE
CREATE TABLE IF NOT EXISTS employee(
emp_id	varchar(50) primary key,
emp_nm	varchar(50),
email	varchar(50),
edn_lvl	varchar(50)
);

-- create table JOB
CREATE TABLE IF NOT EXISTS job(
job_id	serial primary key,
title	varchar(50)
);

-- create table EMPLOYEE_SALARY
CREATE TABLE IF NOT EXISTS employee_salary(
emp_id 		varchar(50),
job_id		int,
salary 		float8,
primary key (emp_id,job_id)
);


-- create table DEPARTMENT
CREATE TABLE IF NOT EXISTS department(
dept_id	serial	primary key,
name	varchar(50)
);


-- create table STATE
CREATE TABLE IF NOT EXISTS state(
state_id	serial primary key,
name		varchar(50)
);


-- create table CITY
CREATE TABLE IF NOT EXISTS city(
city_id 	serial primary key,
state_id	int,
name 		varchar(50)
);


-- create table OFFICE
CREATE TABLE IF NOT EXISTS office(
offc_id 	serial primary key,
city_id		int,
loc			varchar(50),
addr 		varchar(50)
);


-- create table EMPLOYEE_JOB_HIST
CREATE TABLE IF NOT EXISTS employee_job_hist(
emp_id		varchar(50),
mngr_id		varchar(50),
job_id		int,
dept_id		int,
offc_id		int,
hire_dt		date,
start_dt	date,
end_dt		date,
PRIMARY KEY (emp_id, job_id)
);

--Foreign keys cannot be created on tables that do not exist yet, so may be it is easier to create all tables in the database, then to go back and run modify statements on the tables to create foreign key constraints.

-- Adding Foreign Keys to the created tables


ALTER TABLE employee_salary   ADD CONSTRAINT salary_emp_fk  FOREIGN KEY (emp_id)  	REFERENCES employee (emp_id);

ALTER TABLE employee_salary	  ADD CONSTRAINT salary_job_fk 	FOREIGN KEY (job_id) 	REFERENCES job (job_id);

ALTER TABLE city 			  ADD CONSTRAINT city_state_fk 	FOREIGN KEY (state_id) 	REFERENCES state (state_id);

ALTER TABLE office 			  ADD CONSTRAINT office_city_fk FOREIGN KEY (city_id) 	REFERENCES city (city_id);

ALTER TABLE employee_job_hist ADD CONSTRAINT hist_dept_fk 	FOREIGN KEY (dept_id) 	REFERENCES department (dept_id);

ALTER TABLE employee_job_hist ADD CONSTRAINT hist_emp_fk 	FOREIGN KEY (emp_id) 	REFERENCES employee (emp_id);

ALTER TABLE employee_job_hist ADD CONSTRAINT hist_mngr_fk 	FOREIGN KEY (emp_id) 	REFERENCES employee (emp_id);

ALTER TABLE employee_job_hist ADD CONSTRAINT hist_job_fk 	FOREIGN KEY (job_id) 	REFERENCES job (job_id);

ALTER TABLE employee_job_hist ADD CONSTRAINT hist_offc_fk 	FOREIGN KEY (offc_id) 	REFERENCES office (offc_id);

-- Loading the data into the created tables

insert into employee(
select distinct emp_id, emp_nm, email, education_lvl
from proj_stg
);
select * from employee;


insert into job(title)(
select distinct job_title from proj_stg
);
select * from job;


INSERT INTO employee_salary(
select distinct s.emp_id, j.job_id, s.salary
from proj_stg s
join job j
on s.job_title = j.title
);
select * from employee_salary;


insert into department (name)(
select distinct department_nm from proj_stg
);
select * from department;



insert into state (name)(
select distinct(state) from proj_stg
);
select * from state;


INSERT INTO city (state_id, name)(
select distinct st.state_id, ps.city
from state st 
join proj_stg ps
on ps.state = st.name
);
select * from city;



INSERT INTO office (city_id, loc, addr)(
select distinct c.city_id, s.location, s.address
from city c
join proj_stg s
on s.city = c.name
);
select * from office;


insert into employee_job_hist (
select distinct s.emp_id, j.job_id, d.dept_id, o.offc_id, e.emp_id as mngr_id, s.hire_dt, s.start_dt, s.end_dt
from proj_stg s 
join job j 			ON s.job_title	= j.title
join department d 	ON s.department_nm = d.name 
join office o 		ON s.address 	= o.addr
join employee e 	ON s.manager 	= e.emp_nm
);

select * from employee_job_hist;


-- CRUD Queries

-- Question 1: Return a list of employees with Job Titles and Department Names

SELECT e.emp_nm as "Employee Name", j.title as "Job Title" , d.name as "Department Name"
FROM employee_job_hist h
JOIN employee	e	ON	h.emp_id 	= e.emp_id
JOIN department d 	ON	h.dept_id	= d.dept_id
JOIN job		j 	ON	h.job_id 	= j.job_id


-- Question 2: Insert Web Programmer as a new job title

INSERT INTO job (title) values('Web Programmer');
SELECT * FROM job;


--Question 3: Correct the job title from web programmer to web developer

UPDATE JOB SET title = 'Web Developer' WHERE title ='Web Programmer';
SELECT * FROM job;

-- Question 4: Delete the job title Web Developer from the database

DELETE FROM job where title = 'Web Developer';

SELECT * FROM job;


-- Question 5: How many employees are in each department?

SELECT d.name as "Department Name", COUNT(*) as "Number of Employees"
FROM employee_job_hist h
JOIN employee	e	ON	h.emp_id 	= e.emp_id
JOIN department d 	ON	h.dept_id	= d.dept_id
WHERE end_dt >= CURRENT_DATE  -- we don't want to count employees who have left the departments.
GROUP BY d.name;


-- Question 6: Write a query that returns current and past jobs 
-- (include employee name, job title, department, manager name, start and end date for position) 
-- for employee Toni Lembeck.

SELECT e.emp_nm as "employee name", j.title as "job title", d.name as "department", m.emp_nm as "manager name", 
h.start_dt as "start date", h.end_dt as"end date"

FROM employee_job_hist h
JOIN employee	e	ON	h.emp_id 	= e.emp_id
JOIN department d 	ON	h.dept_id	= d.dept_id
JOIN job		j 	ON	h.job_id 	= j.job_id
JOIN employee	m	ON	h.mngr_id 	= m.emp_id
WHERE e.emp_nm = 'Toni Lembeck'

















