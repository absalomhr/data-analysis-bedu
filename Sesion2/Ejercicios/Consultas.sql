USE classicmodels;
describe employees;
select * from employees;

# Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre empiece con a.
SELECT 
employeeNumber AS 'Número de empleado', 
lastName AS 'Apellido', 
firstName as 'Nombre' 
FROM employees WHERE firstName LIKE 'a%';

# Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre termina con on.
SELECT 
employeeNumber AS 'Número de empleado', 
lastName AS 'Apellido', 
firstName as 'Nombre' 
FROM employees WHERE firstName LIKE '%on';

# Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre incluye la cadena on
SELECT
employeeNumber AS 'Número de empleado', 
lastName AS 'Apellido', 
firstName as 'Nombre' 
FROM employees WHERE firstName LIKE '%on%';

# Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyos nombres tienen tres letras e inician con T y finalizan con m.
SELECT
employeeNumber AS 'Número de empleado', 
lastName AS 'Apellido', 
firstName as 'Nombre' 
FROM employees WHERE firstName LIKE 't_m';

# Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre no inicia con B.
SELECT
employeeNumber AS 'Número de empleado', 
lastName AS 'Apellido', 
firstName as 'Nombre' 
FROM employees WHERE firstName NOT LIKE 'b%';