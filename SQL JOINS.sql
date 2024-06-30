-- JOINS 
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics
INNER JOIN employee_salary
ON employee_demographics.employee_id = employee_salary.employee_id;

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON  dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON  dem.employee_id = sal.employee_id
;

-- OUTER JOINS (LEFT JOIN & RIGHT JOIN)
SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
ON  dem.employee_id = sal.employee_id
;

SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
ON  dem.employee_id = sal.employee_id
;

-- SELF JOIN --

SELECT emp1.employee_id,
emp1.first_name as first_santa, 
emp1.last_name as last_santa,
emp2.employee_id,
emp2.first_name as first_emp, 
emp2.last_name as last_emp
FROM employee_salary as emp1
JOIN employee_salary as emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

-- Joining multiple tables --

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON  dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id
;

SELECT *
FROM parks_departments
;
