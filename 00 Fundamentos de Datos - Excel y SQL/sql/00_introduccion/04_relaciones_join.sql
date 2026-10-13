-- LECCIÓN 04 · JOIN une tablas mediante claves; no es una suma de filas.
-- INNER JOIN: solo registros que coinciden.
SELECT v.venta_id,c.nombre AS cliente,v.cantidad
FROM practica_sql.ventas v
INNER JOIN practica_sql.clientes c ON c.cliente_id = v.cliente_id;
-- Unimos tres tablas para responder ¿cuánto se vendió?
SELECT v.venta_id,c.nombre AS cliente,p.nombre AS producto,
       v.cantidad,p.precio,v.cantidad * p.precio AS ingreso
FROM practica_sql.ventas v
JOIN practica_sql.clientes c ON c.cliente_id=v.cliente_id
JOIN practica_sql.productos p ON p.producto_id=v.producto_id;
-- LEFT JOIN conserva todos los clientes, incluso sin ventas.
SELECT c.nombre,COUNT(v.venta_id) AS numero_ventas
FROM practica_sql.clientes c LEFT JOIN practica_sql.ventas v
ON c.cliente_id=v.cliente_id
GROUP BY c.cliente_id,c.nombre ORDER BY numero_ventas DESC;
-- EJERCICIO: suma de ingresos por cliente; no olvides multiplicar cantidad por precio.
