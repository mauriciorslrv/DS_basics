-- LECCIÓN 02 · WHERE: filtros que responden preguntas concretas.
SELECT nombre,pais FROM practica_sql.clientes WHERE pais = 'MX';
SELECT nombre,precio FROM practica_sql.productos WHERE precio > 27;
SELECT * FROM practica_sql.productos WHERE precio BETWEEN 26 AND 32;
SELECT * FROM practica_sql.clientes WHERE pais IN ('CA','US');
SELECT * FROM practica_sql.clientes WHERE nombre LIKE 'A%'; -- empieza por A
SELECT * FROM practica_sql.clientes WHERE pais <> 'MX'; -- diferente de MX
SELECT * FROM practica_sql.clientes WHERE pais='MX' AND nombre LIKE 'D%';
SELECT * FROM practica_sql.clientes WHERE pais='MX' OR pais='CA';
-- NULL: IS NULL / IS NOT NULL, nunca = NULL.
SELECT * FROM practica_sql.clientes WHERE nombre IS NOT NULL;
-- EJERCICIO: muestra productos con precio menor o igual a 28.
