-- UNIONS Allows you to combine rows together

SELECT *
FROM employee_demographics
;

SELECT *
FROM employee_salary
;

-- UNION
SELECT age, gender
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary
;


-- the union above is default UNION DISTINCT

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name
FROM employee_demographics
WHERE age > 50
;

SELECT first_name, last_name, 'OLD MAN' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'OLD LADY' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly_paid' AS label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;