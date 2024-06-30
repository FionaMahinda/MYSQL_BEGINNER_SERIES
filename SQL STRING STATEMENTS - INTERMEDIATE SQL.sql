SELECT LENGTH('Skyfall');

SELECT *
FROM employee_demographics;

SELECT first_name, LENGTH (first_name)
FROM employee_demographics
ORDER BY 2;

-- UPPER AND LOWER
SELECT UPPER(first_name)
FROM employee_demographics
;

SELECT LOWER(first_name)
FROM employee_demographics
;

-- TRIM
SELECT RTRIM('					SKY						');

-- SUBSTRING --

SELECT *
FROM employee_demographics
;

SELECT first_name
FROM employee_demographics
;

SELECT first_name, LEFT(first_name, 4)
FROM employee_demographics
;

SELECT first_name,
LEFT(first_name, 4),
SUBSTRING(first_name, 3,2), 
birth_date,
SUBSTRING(birth_date, 3,2) as Birth_year,
SUBSTRING(birth_date, 6,2) as Birth_month
FROM employee_demographics
;

-- REPLACE, LOCATE AND CONCAT

SELECT first_name, last_name,
CONCAT(first_name,' ', last_name) AS Full_Name
FROM employee_demographics
;










