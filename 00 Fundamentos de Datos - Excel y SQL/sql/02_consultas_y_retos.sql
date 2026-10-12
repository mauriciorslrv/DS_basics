-- AELITYX | de SELECT a decisiones, PostgreSQL
-- 1. Inspeccionar estructura
SELECT * FROM aelityx_lab.vw_ventas_detalle LIMIT 10;
-- 2. Filtrado: ventas por mercado
SELECT fecha,cliente,pais,producto,unidades FROM aelityx_lab.vw_ventas_detalle WHERE pais IN ('US','CA') ORDER BY fecha;
-- 3. GROUP BY/HAVING: países con ventas representativas
SELECT pais, SUM(ingreso) AS ingresos, SUM(margen_bruto) AS margen, COUNT(*) AS pedidos FROM aelityx_lab.vw_ventas_detalle GROUP BY pais HAVING COUNT(*)>=5 ORDER BY ingresos DESC;
-- 4. JOIN: clientes sin ventas (en este dataset todos tienen ventas; ensaya insertando uno nuevo)
SELECT c.cliente_id,c.nombre,COUNT(v.id) AS operaciones FROM aelityx_lab.clientes c LEFT JOIN aelityx_lab.ventas v USING(cliente_id) GROUP BY c.cliente_id,c.nombre ORDER BY operaciones;
-- 5. Ventanas: ranking de productos por mercado
WITH resumen AS (SELECT pais,producto,SUM(ingreso) AS ingresos FROM aelityx_lab.vw_ventas_detalle GROUP BY pais,producto)
SELECT *,DENSE_RANK() OVER(PARTITION BY pais ORDER BY ingresos DESC) AS ranking FROM resumen;
-- 6. CTE y rentabilidad mensual
WITH mensual AS (SELECT DATE_TRUNC('month',fecha)::date mes,SUM(ingreso) ingreso,SUM(costo) costo FROM aelityx_lab.vw_ventas_detalle GROUP BY 1)
SELECT mes, ingreso,costo, ingreso-costo AS margen_bruto, ROUND(100*(ingreso-costo)/NULLIF(ingreso,0),2) AS margen_pct FROM mensual ORDER BY mes;
-- RETOS (sin solución inmediata):
-- A. ¿Qué clientes concentran el 80 % del ingreso? Documenta supuesto y método.
-- B. ¿Cómo cambia la rentabilidad si transporte suma 7% al costo?
-- C. ¿Qué pasa con un producto que tiene descuentos? Separa margen de facturación.
-- D. Construye una vista con última compra por cliente y días desde compra.
-- E. Crea índices cuando EXPLAIN ANALYZE justifique su uso.
