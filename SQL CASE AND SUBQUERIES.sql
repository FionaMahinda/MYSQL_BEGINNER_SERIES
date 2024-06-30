-- CASE STATEMENTS

SELECT *
FROM employee_salary;

SELECT first_name, Last_name,
CASE
	WHEN age < 30 THEN 'VERY YOUNG'
    WHEN age BETWEEN 30 AND 50 THEN 'OLD'
    WHEN age > 50 THEN 'VERY OLD' 
    END AS Age_Bracket
FROM employee_demographics;

-- EXAMPLE 2
-- SALARY  DEP IS GIVING BONUS AND SALARY INCREAMENT
-- IF SALARY < 50000 5% INCREASE
-- IF SALARY > 50000 7% INCREASE
-- IF IN FINANCE DEPT 10% BONUS

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
    END AS New_Salary,
CASE 
	WHEN dept_id = 6 THEN salary * 0.10
    END AS Bonus
FROM employee_salary;

SELECT *
FROM parks_departments;


-- SUB QUERIES

SELECT *
FROM employee_demographics
WHERE employee_id IN
				(SELECT employee_id
					FROM employee_salary
                    WHERE dept_id = 1)
;
SELECT *
FROM employee_salary;

SELECT *
FROM parks_departments;

-- USING SUB QUERIES IN select STATEMENTS
-- EXAMPLE 2

SELECT first_name, salary, AVG(salary)
FROM employee_salary
GROUP BY first_name, salary
;
 
 -- to get the avg salary
 
SELECT first_name, salary, 
(SELECT AVG (salary)
FROM employee_salary)
FROM employee_salary;