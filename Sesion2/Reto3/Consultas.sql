USE tienda;

# Consulta 1: ¿Cuántos registros hay por cada uno de los puestos?
SELECT nombre AS 'Nombre del puesto', COUNT(*) AS 'Número de registros' FROM puesto GROUP BY nombre;

# Consulta 2: ¿Cuánto dinero se paga en total por puesto?
SELECT nombre AS 'Puesto', SUM(salario) AS 'Salario total' FROM puesto GROUP BY nombre;

# Consulta 3: ¿Cuál es el número total de ventas por vendedor?
SELECT id_empleado AS 'Empleado', COUNT(*) AS 'Ventas totales' FROM venta GROUP BY id_empleado;

# Consulta 4: ¿Cuál es el número total de ventas por artículo?
SELECT id_articulo AS 'Articulo', COUNT(*) AS 'Ventas totales' FROM venta GROUP BY id_articulo;
