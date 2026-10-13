-- LECCIÓN 01 · SELECT, FROM, DISTINCT, AS.
-- ¿Para qué sirve SELECT? Para elegir qué columnas quieres leer de una tabla.
SELECT * FROM practica_sql.clientes; -- * muestra todas las columnas.
SELECT nombre, pais FROM practica_sql.clientes; -- solo dos columnas.
SELECT nombre AS cliente, pais AS mercado FROM practica_sql.clientes;
-- AS cambia cómo se ve un nombre en el resultado, no la tabla original.
SELECT DISTINCT pais FROM practica_sql.clientes; -- países sin repetir.
SELECT nombre, precio, precio * 2 AS precio_por_dos FROM practica_sql.productos;
-- EJERCICIO: selecciona solo el nombre y precio de cada producto.
