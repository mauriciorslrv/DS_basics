-- LECCIÓN 05 · Cambios seguros. Cada bloque ROLLBACK revierte la prueba.
-- INSERT agrega filas.
BEGIN;
INSERT INTO practica_sql.clientes(cliente_id,nombre,pais)
VALUES(6,'Fabiola','CA');
SELECT * FROM practica_sql.clientes WHERE cliente_id=6;
ROLLBACK;
-- UPDATE modifica filas existentes. Siempre revisar WHERE antes de ejecutar.
BEGIN;
UPDATE practica_sql.productos SET precio=30 WHERE producto_id=1;
SELECT * FROM practica_sql.productos WHERE producto_id=1;
ROLLBACK;
-- DELETE borra filas. Una condición incorrecta puede borrar de más.
BEGIN;
DELETE FROM practica_sql.ventas WHERE venta_id=7;
SELECT COUNT(*) FROM practica_sql.ventas;
ROLLBACK;
-- COMMIT guardaría definitivamente los cambios (no lo hacemos aquí).
-- Ejercicio: dentro de BEGIN / ROLLBACK cambia el país de un cliente;
-- comprueba resultado antes y después de ROLLBACK.
