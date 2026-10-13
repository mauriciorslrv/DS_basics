# SQL desde cero · primera ruta de consultas

**Punto de partida:** no necesitas conocer bases de datos ni instalar un servidor para leer y resolver estos ejemplos. Este material utiliza un conjunto pequeño de **ventas ficticias**; no son resultados reales de ninguna empresa.

## ¿En qué orden aprender?

| Lección | Pregunta | Archivo | Dificultad |
|---|---|---|---|
| 00 | ¿Qué es una tabla? ¿Qué significan fila y columna? | [Datos de práctica](./00_datos_de_practica.sql) | Inicial |
| 01 | ¿Cómo selecciono información? | [SELECT, DISTINCT, alias](./01_seleccionar.sql) | Inicial |
| 02 | ¿Cómo encuentro solo lo que me interesa? | [WHERE, operadores, LIKE, IN, BETWEEN, NULL](./02_filtrar.sql) | Inicial |
| 03 | ¿Cómo ordeno y resumo? | [ORDER BY, LIMIT, COUNT, SUM, AVG, GROUP BY, HAVING](./03_ordenar_y_agrupar.sql) | Básico |
| 04 | ¿Cómo conecto tablas? | [JOIN](./04_relaciones_join.sql) | Básico |
| 05 | ¿Cómo agrego y modifico información? | [INSERT, UPDATE, DELETE y transacciones](./05_modificar_datos.sql) | Intermedio |
| 06 | ¿Qué consultas resuelvo por mi cuenta? | [Retos guiados](./06_ejercicios.sql) | Práctica |
| 07 | ¿Cómo compruebo mis respuestas? | [Soluciones comentadas](./07_soluciones.sql) | Práctica |

## Cómo ejecutarlo con PostgreSQL, paso a paso

1. Instala PostgreSQL y abre **pgAdmin** o `psql`. Crea una base de pruebas vacía.
2. Abre y ejecuta `00_datos_de_practica.sql`: crea un esquema `practica_sql` con tres tablas y algunos registros.
3. Recorre **uno a uno** los scripts 01–04; selecciona una consulta y ejecútala. Lee los comentarios que explican qué devuelve y cuándo se usa.
4. Usa el archivo 06 para resolver ejercicios **antes** de consultar las respuestas.
5. El archivo 05 modifica registros: se ejecuta dentro de transacciones con `ROLLBACK` para preservar el conjunto de ejemplo.
6. Cuando domines esto, avanza al [proyecto aplicado de PostgreSQL](../01_modelo_y_datos_postgresql.sql) y a las [consultas analíticas avanzadas](../02_consultas_y_retos.sql).

**¿Y sin PostgreSQL?** Abre la [notebook SQL desde cero](../../notebooks/02_SQL_desde_cero.ipynb) en Colab: enseña conceptos similares usando SQLite y pandas. PostgreSQL y SQLite tienen diferencias de dialecto y no todos los comandos se trasladan sin cambios.

## Glosario muy corto

- **Tabla**: conjunto estructurado de datos del mismo tipo (por ejemplo, clientes).
- **Fila**: un registro (un cliente). **Columna**: una característica (país).
- **Clave primaria (PK)**: identificador único de una fila.
- **Clave foránea (FK)**: columna que apunta a un registro de otra tabla.
- **Query**: pregunta escrita en SQL que la base de datos ejecuta.
- **NULL**: ausencia de valor; no equivale a 0 o a texto vacío.

> Idea central: empieza con una pregunta sencilla y aumenta la complejidad solo cuando la necesitas.
