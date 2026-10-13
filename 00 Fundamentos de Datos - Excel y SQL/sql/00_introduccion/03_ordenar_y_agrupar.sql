-- LECCIÓN 03 · Ordenar, limitar y resumir
SELECT nombre,precio FROM practica_sql.productos ORDER BY precio DESC; -- mayor primero
SELECT nombre,precio FROM practica_sql.productos ORDER BY precio ASC LIMIT 2;
SELECT COUNT(*) AS numero_clientes FROM practica_sql.clientes;
SELECT SUM(cantidad) AS unidades_totales FROM practica_sql.ventas;
SELECT AVG(precio) AS precio_promedio FROM practica_sql.productos;
SELECT MIN(precio) AS menor_precio, MAX(precio) AS mayor_precio FROM practica_sql.productos;
-- Una fila por producto. GROUP BY define el criterio de agrupación.
SELECT producto_id,SUM(cantidad) AS unidades
FROM practica_sql.ventas
GROUP BY producto_id
ORDER BY unidades DESC;
-- HAVING filtra grupos ya calculados; WHERE filtra filas ANTES de agrupar.
SELECT cliente_id,COUNT(*) AS compras
FROM practica_sql.ventas GROUP BY cliente_id HAVING COUNT(*) >= 2;
-- EJERCICIO: total de unidades vendidas por cliente, ordenadas de mayor a menor.
