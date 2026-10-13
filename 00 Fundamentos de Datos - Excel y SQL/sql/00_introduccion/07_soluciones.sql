-- SOLUCIONES ORIENTATIVAS · Varias respuestas pueden ser correctas.
-- 1
SELECT nombre FROM practica_sql.clientes;
-- 2
SELECT nombre,precio FROM practica_sql.productos WHERE precio>26;
-- 3
SELECT DISTINCT pais FROM practica_sql.clientes;
-- 4
SELECT nombre,precio FROM practica_sql.productos ORDER BY precio DESC LIMIT 2;
-- 5
SELECT COUNT(*) AS total_ventas FROM practica_sql.ventas;
-- 6
SELECT SUM(cantidad) AS unidades FROM practica_sql.ventas;
-- 7
SELECT producto_id,SUM(cantidad) AS unidades FROM practica_sql.ventas GROUP BY producto_id;
-- 8
SELECT v.venta_id,c.nombre AS cliente,p.nombre AS producto
FROM practica_sql.ventas v JOIN practica_sql.clientes c USING(cliente_id)
JOIN practica_sql.productos p USING(producto_id);
-- 9
SELECT v.venta_id,v.cantidad * p.precio AS ingreso
FROM practica_sql.ventas v JOIN practica_sql.productos p USING(producto_id);
-- 10
SELECT c.nombre,COUNT(v.venta_id) AS ventas,
       SUM(v.cantidad*p.precio) AS ingresos
FROM practica_sql.clientes c JOIN practica_sql.ventas v USING(cliente_id)
JOIN practica_sql.productos p USING(producto_id)
GROUP BY c.cliente_id,c.nombre ORDER BY ventas DESC,ingresos DESC LIMIT 1;
-- EXTRA · Las compras nulas cuentan como cero usando COUNT(v.venta_id), no COUNT(*).
SELECT c.nombre FROM practica_sql.clientes c
LEFT JOIN practica_sql.ventas v USING(cliente_id)
GROUP BY c.cliente_id,c.nombre HAVING COUNT(v.venta_id)=0;
