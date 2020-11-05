USE tienda;

#¿Cuál es el nombre de los empleados que realizaron cada venta?
SELECT clave, nombre FROM empleado JOIN venta ON empleado.id_empleado = venta.id_empleado;

#¿Cuál es el nombre de los artículos que se han vendido?
SELECT clave, nombre FROM articulo JOIN venta ON articulo.id_articulo = venta.id_articulo;

#¿Cuál es el total de cada venta?
SELECT clave, SUM(precio) AS Total FROM venta JOIN articulo ON venta.id_articulo = articulo.id_articulo GROUP BY clave;