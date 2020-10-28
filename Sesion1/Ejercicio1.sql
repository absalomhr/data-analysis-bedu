# Base de datos a utilizar
USE tienda;
# Mostrar las tablas que hay en la base de datos
SHOW tables;

# Consulta 1:
# ¿Cuál es el nombre de los empleados con el puesto 4?
# Mostramos las columnas que hay en la tabla a utilizar
DESCRIBE empleado;
# Ejecutamos la consulta usando WHERE
SELECT nombre FROM empleado WHERE id_puesto = 4;

# Consulta 2:
# ¿Qué puestos tienen un salario mayor a $10,000?
# Mostramos las columnas que hay en la tabla a utilizar
DESCRIBE puesto;
# Ejecutamos la consulta usando WHERE
SELECT * FROM puesto WHERE salario > 10000;

# Consulta 3:
# ¿Qué articulos tienen un precio mayor a $1,000 y un iva mayor a 100?
# Mostramos las columnas que hay en la tabla a utilizar
DESCRIBE articulo;
# Ejecutamos la consulta usando WHERE y AND
SELECT * FROM articulo WHERE precio > 1000 AND iva > 100;

# Consulta 4:
# ¿Qué ventas incluyen los artículo 135 o 963 y fueron hechas por los empleados 835 o 369?
# Mostramos las columnas que hay en la tabla a utilizar
DESCRIBE venta;
# Ejecutamos la consulta usando WHERE y AND
SELECT * FROM venta WHERE id_articulo IN (135, 963) AND id_empleado IN (835, 369);