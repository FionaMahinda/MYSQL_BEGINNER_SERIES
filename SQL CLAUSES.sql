-- WHERE CLAUSE

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name = 'Leslie';

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'female';

-- LOGICAL OPERATORS-- AND OR NOT

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%';

-- GROUP BY --

SELECT *
FROM employee_demographics
where birth_date < 1970-01-01
GROUP BY first_name
;
SELECT *
FROM parks_and_recreation.employee_demographics;

-- LIMIT & ALIASING --
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3
;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3, 1;

-- ALIASING --

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;