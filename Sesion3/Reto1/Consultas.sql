USE tienda;
show tables;
desc empleado;
desc puesto;
desc venta;

# ¿Cuál es el nombre de los empleados cuyo sueldo es mayor a $10,000?
SELECT empleado.nombre AS 'Empleado con salario mayor a 10000' FROM empleado JOIN puesto on empleado.id_puesto = puesto.id_puesto WHERE puesto.salario > 10000;

# ¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?
SELECT id_empleado, min(total_ventas), max(total_ventas) FROM  (SELECT clave, id_empleado, count(*) total_ventas FROM venta GROUP BY clave, id_empleado) AS sq GROUP BY id_empleado;

# ¿Cuáles claves de venta incluyen artículos cuyos precios son mayores a $5,000?
SELECT venta.clave AS 'Clave de venta' FROM venta JOIN articulo ON venta.id_articulo = articulo.id_articulo WHERE articulo.precio > 5000;