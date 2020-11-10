USE tienda;

# Obtener el puesto de un empleado.
CREATE VIEW empleado_puesto_145 AS SELECT t1.nombre AS Empleado, t2.nombre AS Puesto FROM empleado t1 JOIN puesto t2 ON t1.id_puesto = t2.id_puesto;
SELECT * FROM empleado_puesto;

#Saber qué artículos ha vendido cada empleado.
CREATE VIEW empleado_articulo_145 AS SELECT clave, e.nombre AS nombreEmpleado, a.nombre AS nombreArticulo FROM venta JOIN empleado e ON venta.id_empleado = e.id_empleado JOIN articulo a ON venta.id_articulo = a.id_articulo;
SELECT * FROM empleado_articulo_145;

#Saber qué puesto ha tenido más ventas.
CREATE VIEW puesto_ventas_145 AS SELECT p.nombre, count(v.clave) total FROM venta v JOIN empleado e ON v.id_empleado = e.id_empleado JOIN puesto p ON e.id_puesto = p.id_puesto GROUP BY p.nombre;
SELECT * FROM puesto_ventas_145 ORDER BY total DESC LIMIT 1;