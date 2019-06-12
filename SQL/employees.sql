CREATE DATABASE IF NOT EXISTS hr_department;
USE hr_department;
CREATE TABLE IF NOT EXISTS employees (
id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
employee_position VARCHAR(30) NOT NULL,
employee_salary MEDIUMINT NOT NULL
);
INSERT INTO employees ( id, first_name, last_name, employee_position, employee_salary) VALUES ( null, 'Artem', 'Ivanov', 'Java developer', 120000);
INSERT INTO employees ( id, first_name, last_name, employee_position, employee_salary) VALUES ( null, 'Mikhail', 'Smirnov', 'Java developer', 100000);
INSERT INTO employees ( id, first_name, last_name, employee_position, employee_salary) VALUES ( null, 'Dmitry', 'Popov', 'Designer', 60000);
INSERT INTO employees ( id, first_name, last_name, employee_position, employee_salary) VALUES ( null, 'Maxim', 'Sokolov', 'Designer', 25000);
INSERT INTO employees ( id, first_name, last_name, employee_position, employee_salary) VALUES ( null, 'Ivan', 'Novikov', 'Designer', 25000);

/* выборка работников с ЗП < 30000 рублей*/
SELECT first_name, last_name, employee_position 
FROM hr_department.employees WHERE employee_salary < 30000; 

/* выборка дизайнеров с ЗП < 30000 рублей*/
SELECT first_name, last_name 
FROM hr_department.employees WHERE (employee_position = 'Designer' AND employee_salary < 30000);