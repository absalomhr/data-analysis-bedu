USE classicmodels;
DESCRIBE employees;

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

# Dentro de la tabla products, obten el código de producto y nombre de los productos cuyo código incluye la cadena _20.
DESCRIBE products;
SELECT productCode AS 'Código de producto', productName AS 'Nombre del producto' FROM products WHERE productCode LIKE '%_20%';

# Dentro de la tabla orderdetails, obten el total de cada orden.
DESCRIBE orderdetails;
SELECT orderNumber AS 'Orden', SUM(priceEach * quantityOrdered) AS 'Precio otal' FROM orderdetails GROUP BY orderNumber;

# Dentro de la tabla orders obten el número de órdenes por año.
DESCRIBE orders;
SELECT YEAR(orderDate) AS 'Año', COUNT(*) AS 'N° de órdenes' FROM orders GROUP BY YEAR(orderDate);

# Obten el apellido y nombre de los empleados cuya oficina está ubicada en USA.
DESCRIBE employees;
SELECT * FROM offices;
SELECT * FROM employees;

# Usando el conocimiento del prework de la Sesión 3:
SELECT lastName AS 'Apellido', firstName AS 'Nombre' FROM employees JOIN offices ON employees.officeCode = offices.officeCode WHERE offices.country = 'USA';

# Obten el número de cliente, número de cheque y cantidad del cliente que ha realizado el pago más alto.
SELECT customerNumber AS 'Número de cliente', checkNumber AS 'Número de cheque', amount AS 'Cantidad' FROM payments WHERE amount = (SELECT MAX(amount) FROM payments);

# Obten el número de cliente, número de cheque y cantidad de aquellos clientes cuyo pago es más alto que el promedio.
SELECT customerNumber AS 'Número de cliente', checkNumber AS 'Número de cheque', amount AS 'Cantidad' FROM payments WHERE amount > (SELECT AVG(amount) FROM payments);

# Obten el nombre de aquellos clientes que no han hecho ninguna orden.
SELECT customerName AS 'Nombre de cliente sin orden' FROM customers WHERE customerNumber NOT IN (SELECT customerNumber from orders);

# Obten el máximo, mínimo y promedio del número de productos en las órdenes de venta.
SELECT MAX(t1.c) AS Máximo, MIN(t1.c) AS Mínimo, AVG(t1.c) AS promedio FROM (SELECT SUM(quantityOrdered) AS c FROM orderdetails GROUP BY orderNumber) AS t1;

# Dentro de la tabla orders, obten el número de órdenes que hay por cada estado.
SELECT status AS Estado, COUNT(*) AS 'Número de ordenes' FROM orders GROUP BY status;
