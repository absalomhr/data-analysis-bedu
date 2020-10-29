USE tienda;

# Consulta 1: ¿Cuál es el promedio de salario de los puestos?
SELECT AVG(salario) AS 'Salario promedio' FROM puesto;

# Consulta 2: ¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT COUNT(*) AS 'Articulos Pasta' FROM articulo WHERE nombre LIKE '%Pasta%';

# Consulta 3: ¿Cuál es el salario mínimo y máximo?
SELECT MIN(salario) AS 'Salario minimo', MAX(salario) AS 'Salario máximo' from puesto;

# Consulta 4: ¿Cuál es la suma del salario de los últimos cinco puestos agregados?
# Encontrar estructura de los ids de puesto:
SELECT * FROM puesto;
# Como los ids van incrementando de a uno, se realiza la consulta para obtener último id:
SELECT MAX(id_puesto) AS 'Id máximo' FROM puesto;
# El id máximo en 1000, entonces se necesitan ids 956-1000:
SELECT SUM(salario) AS 'Suma 5 últimos salarios' FROM puesto WHERE id_puesto >= 996;