-- LECCIÓN 00 · Preparar las tablas (PostgreSQL)
-- Ejecuta este archivo una vez antes de las lecciones 01 a 07.
CREATE SCHEMA IF NOT EXISTS practica_sql;
DROP TABLE IF EXISTS practica_sql.ventas;
DROP TABLE IF EXISTS practica_sql.productos;
DROP TABLE IF EXISTS practica_sql.clientes;

CREATE TABLE practica_sql.clientes (
  cliente_id INTEGER PRIMARY KEY,
  nombre TEXT NOT NULL,
  pais TEXT NOT NULL
);
CREATE TABLE practica_sql.productos (
  producto_id INTEGER PRIMARY KEY,
  nombre TEXT NOT NULL,
  precio NUMERIC(10,2) NOT NULL CHECK(precio >= 0)
);
CREATE TABLE practica_sql.ventas (
  venta_id INTEGER PRIMARY KEY,
  cliente_id INTEGER NOT NULL REFERENCES practica_sql.clientes(cliente_id),
  producto_id INTEGER NOT NULL REFERENCES practica_sql.productos(producto_id),
  cantidad INTEGER NOT NULL CHECK(cantidad > 0),
  fecha DATE NOT NULL
);

INSERT INTO practica_sql.clientes (cliente_id,nombre,pais) VALUES
 (1,'Ana','MX'),(2,'Bruno','US'),(3,'Carla','CA'),(4,'Diego','MX'),(5,'Eva','US');
INSERT INTO practica_sql.productos (producto_id,nombre,precio) VALUES
 (1,'Albahaca',28.00),(2,'Romero',32.00),(3,'Menta',26.00);
INSERT INTO practica_sql.ventas (venta_id,cliente_id,producto_id,cantidad,fecha) VALUES
 (1,1,1,10,'2025-01-06'),(2,2,2,5,'2025-01-12'),
 (3,1,3,8,'2025-02-02'),(4,3,1,7,'2025-02-13'),
 (5,4,2,6,'2025-03-11'),(6,2,1,12,'2025-03-19'),
 (7,5,3,3,'2025-03-22');

-- Primer paso: una tabla puede verse con una consulta SELECT.
SELECT * FROM practica_sql.clientes;
SELECT * FROM practica_sql.productos;
SELECT * FROM practica_sql.ventas;
