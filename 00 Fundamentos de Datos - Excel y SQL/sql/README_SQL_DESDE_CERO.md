# 00 · SQL explicado para principiantes

> La primera query no debe dar miedo. Aquí empezamos con una pregunta que cualquiera puede entender: **¿qué información quiero ver?**

## Qué voy a aprender y en qué orden

| Nivel | Tema | Pregunta que responde | Dónde practicar |
|---|---|---|---|
| 0 | Tablas, filas y columnas | ¿Cómo se guarda una venta? | [Notebook interactiva sin servidor](../notebooks/03_Primeras_Queries_SQL.ipynb) |
| 1 | SELECT / FROM | ¿Qué datos quiero ver? | [Lección 01](./00_introduccion/01_seleccionar.sql) |
| 1 | WHERE | ¿Qué filas cumplen una condición? | [Lección 02](./00_introduccion/02_filtrar.sql) |
| 1 | ORDER BY / LIMIT | ¿Qué registros aparecen primero? | [Lección 03](./00_introduccion/03_ordenar_y_agrupar.sql) |
| 2 | COUNT / SUM / AVG | ¿Cuánto hay y cuánto suma? | [Lección 03](./00_introduccion/03_ordenar_y_agrupar.sql) |
| 2 | GROUP BY / HAVING | ¿Qué pasa por país o producto? | [Lección 03](./00_introduccion/03_ordenar_y_agrupar.sql) |
| 2 | JOIN | ¿Quién compró qué? | [Lección 04](./00_introduccion/04_relaciones_join.sql) |
| 3 | INSERT / UPDATE / DELETE | ¿Cómo cambio datos con seguridad? | [Lección 05](./00_introduccion/05_modificar_datos.sql) |
| 3 | Retos y soluciones | ¿Puedo hacerlo solo? | [Retos](./00_introduccion/06_ejercicios.sql) · [Soluciones](./00_introduccion/07_soluciones.sql) |

## Una consulta es una pregunta

```sql
-- ¿Qué clientes hay en México?
SELECT nombre, pais
FROM practica_sql.clientes
WHERE pais = 'MX'
ORDER BY nombre;
```

**Traducción:** quiero ver el nombre y país, tomados de la tabla clientes, únicamente para México y ordenados por nombre.

- `SELECT` decide qué columnas mostrar.
- `FROM` indica la tabla de origen.
- `WHERE` decide qué filas incluir.
- `ORDER BY` determina en qué orden se ven.

Antes de ejecutar, escribe en una frase qué esperas obtener; después compara el resultado con tu predicción.

## ¿Por dónde comienzo?

1. **Sin instalar nada:** abre [03 · Primeras Queries](../notebooks/03_Primeras_Queries_SQL.ipynb) en [Google Colab](https://colab.research.google.com/github/mauriciorslrv/DS_basics/blob/main/00%20Fundamentos%20de%20Datos%20-%20Excel%20y%20SQL/notebooks/03_Primeras_Queries_SQL.ipynb). La notebook usa SQLite, incorporado en Python, y siete ventas ficticias.
2. **Con PostgreSQL local:** sigue la [guía de instalación en Windows y pgAdmin](./POSTGRESQL_LOCAL.md), carga las tablas pequeñas y recorre los scripts de `00_introduccion/`.
3. **Con el ejercicio comercial grande:** después ve a los scripts `01_modelo_y_datos_postgresql.sql` y `02_consultas_y_retos.sql`, con 72 ventas ficticias.
4. **Cuando ya sepas Python y estadística:** integra escenarios, automatizaciones, incertidumbre y tableros de BI.

El objetivo no es memorizar veinte comandos: es convertir una pregunta en una consulta que puedas explicar.

## Caso aplicado · hierbas aromáticas

Imagina una comercializadora ficticia que distribuye albahaca, romero, menta y tomillo. El material grande utiliza clientes simulados de México, Estados Unidos y Canadá. La persona encargada quiere comprender ingresos, margen bruto, clientes y productos; **no** tiene información suficiente para calcular la utilidad neta.

El mismo caso reaparece en Excel, SQL, Python y BI para mostrar cómo cambia la herramienta, pero no la necesidad de hacer buenas preguntas.

### ¿Qué hay después del nivel básico?

**Nivel intermedio:** relaciones entre tres tablas, KPIs y análisis de sensibilidad de costos.

**Nivel avanzado (recomendado después de Python y estadística):** simular retrasos logísticos, estimar escenarios, validar hipótesis, automatizar análisis y presentar un dashboard. No es necesario usar machine learning si una consulta o un gráfico responde mejor la pregunta.

