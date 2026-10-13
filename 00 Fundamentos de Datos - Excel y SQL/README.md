# Módulo 00 · Fundamentos de datos: Excel y SQL

> **Ruta de aprendizaje:** preguntas → datos → análisis → decisiones.

## Qué aprenderás
- Excel: tablas, filtros, funciones, tablas dinámicas, calidad y transformación de datos.
- SQL con PostgreSQL: SELECT, WHERE, GROUP BY, JOIN, relaciones, CTE, ventanas y vistas.
- Cómo pasar de hojas de cálculo a un modelo de datos y conectar después Python y BI.

## Empieza aquí si nunca has utilizado SQL

**No comiences con CTE ni funciones de ventana.** La ruta inicial explica qué es una tabla y avanza por SELECT, filtros, ordenamiento, agrupación, JOIN y modificaciones seguras, con ejercicios y soluciones.

📖 [**SQL desde cero · ocho lecciones breves y ejercicios comentados**](./sql/00_introduccion/README.md)

```sql
-- ¿Qué clientes viven en México?
SELECT nombre, pais
FROM practica_sql.clientes
WHERE pais = 'MX';
```

Para ejecutar ese ejemplo, primero corre el [script de datos pequeños](./sql/00_introduccion/00_datos_de_practica.sql) en PostgreSQL. Más adelante puedes pasar al caso de 72 ventas y a las consultas avanzadas que ya existen.

## Ruta para avanzar sin saltos

| Etapa | ¿Qué harás? | Dificultad |
|---|---|---|
| **A · Primer contacto** | [Leer qué hace cada query](./sql/README_SQL_DESDE_CERO.md) y ejecutar la [notebook 03 · Primeras Queries](./notebooks/03_Primeras_Queries_SQL.ipynb) | Desde cero |
| **B · PostgreSQL local** | Seguir la [guía paso a paso para Windows](./sql/POSTGRESQL_LOCAL.md) y recorrer las ocho lecciones SQL | Básico |
| **C · Caso completo en Excel** | Explorar la historia de una comercializadora ficticia: datos, clientes, productos y escenarios | Básico–intermedio |
| **D · Análisis relacional** | Trabajar con el modelo PostgreSQL de 72 ventas y consultas con JOIN y agregaciones | Intermedio |
| **E · Extensión avanzada** | Integrar Python, estadística, escenarios de logística y dashboards | Después de módulos 01 y 02 |

**No necesitas comenzar por CTE, funciones de ventana o predicción.** La primera meta es comprender una tabla, escribir una pregunta y leer lo que la consulta devuelve.

### Historia del ejercicio comercial

Imagina una pequeña comercializadora ficticia que vende **albahaca, romero, menta y tomillo** a seis clientes simulados en México, Estados Unidos y Canadá. Tenemos 72 operaciones de ejemplo con fecha, cantidades, precios y costos variables.

La persona responsable se pregunta: ¿qué vendimos?, ¿quién compra?, ¿qué producto aporta mayor margen bruto?, ¿qué podría cambiar si aumentan los insumos? Primero responderemos con hojas de cálculo y consultas sencillas; luego iremos a análisis más elaborado.

No tenemos fletes, salarios, aranceles ni todos los costos fijos reales; por tanto, no podemos afirmar utilidad neta. Los datos son **sintéticos** y no describen una empresa real.

### Libro de Excel narrativo · práctica guiada

Este libro complementa la ruta SQL con un caso ficticio de comercialización de hierbas aromáticas. El propósito es pasar de observar una tabla a formular preguntas, calcular indicadores, interpretar resultados y proponer decisiones. **No se necesitan conocimientos previos de Python** para recorrer las primeras hojas.

| Hoja | Contenido |
|---|---|
| **00 Cómo usarlo** | Recorrido y preguntas que guían la práctica. |
| **01 Datos** | Registro de 72 ventas ficticias, precios, cantidades y costos; fórmulas por venta. |
| **02 Qué pasó** | Indicadores de ventas, unidades, ingresos, costo variable y margen bruto. |
| **03 Clientes** | Operaciones, ingresos, margen y participación por cliente. |
| **04 Productos** | Volumen, ingresos y comparación de márgenes. |
| **05 Escenarios** | Sensibilidad ante cambios en costos, descuentos y transporte. |
| **06 Conclusiones** | Preguntas de reflexión y decisiones con sus limitaciones. |
| **07 Vida (extra)** | Dataset independiente de expectativa de vida para explorar calidad de datos. |
| **Caso · historia** | Contexto, objetivos, preguntas y supuestos del ejercicio comercial. |
| **Aprender SQL** | Primera explicación de queries: seleccionar, filtrar, ordenar, agrupar y unir. |
| **Instalar PostgreSQL** | Guía de instalación local, creación de base y primeras consultas. |
| **Niveles y retos** | Progresión para principiantes y desafíos de análisis posteriores. |

**Cómo aprovecharlo:** comienza por **Caso · historia** y **00 Cómo usarlo**, continúa con **01 Datos → 02 Qué pasó → 03 Clientes → 04 Productos → 05 Escenarios → 06 Conclusiones**. Las otras hojas funcionan como apoyo. Los resultados comerciales son sintéticos; el margen bruto no equivale a utilidad neta.

**Archivo recomendado:** `ejercicios/DS_basics_Excel_Narrativo_v2.xlsx`. El libro se incorporará como descarga directa cuando el archivo binario esté publicado en esta carpeta del repositorio. Mientras tanto, los CSV originales siguen disponibles en [datos/](./datos/).

## Orden sugerido
1. [00 - Preparación y diagnóstico en Excel con pandas como verificación](./notebooks/01_Excel_y_calidad_de_datos.ipynb). El ejercicio de Excel incluye instrucciones manuales; Python **verifica** resultados, no sustituye Excel.
2. [01 - Consultas SQL aplicadas al negocio](./notebooks/02_SQL_desde_cero.ipynb). Se ejecuta en Python contra SQLite **solo para primeros pasos**; para PostgreSQL sigue los scripts SQL.
3. [Modelo PostgreSQL y datos](./sql/01_modelo_y_datos_postgresql.sql) y [consultas analíticas](./sql/02_consultas_y_retos.sql).
4. [Proyecto guiado de caso comercial](./proyectos/README.md).

## Dataset
Los archivos CSV de `datos/` contienen **información sintética** de una comercializadora ficticia de hierbas aromáticas (72 operaciones, 6 clientes, 4 productos). Los datos no representan ventas o resultados históricos de una empresa real.

## Entorno
Excel o LibreOffice Calc para la práctica en hoja de cálculo; Python 3 con pandas para notebooks y PostgreSQL 14+ para los scripts SQL.

## Excel, ejercicios extensos
1. Importa `datos/ventas.csv` como tabla estructurada y valida tipos/fechas.
2. Importa clientes/productos; relaciona mediante BUSCARX o Power Query (o BUSCARV en versiones antiguas).
3. Calcula ingresos = unidades × precio, costo variable = unidades × costo y margen = ingresos − costo.
4. Construye tablas dinámicas por país, producto, mes y cliente; grafica tendencias.
5. Simula incremento de insumos 10 %, descuento comercial 5 % y transporte 7 % adicional; compara escenarios sin mezclar ingreso y utilidad.
6. Entrega un resumen ejecutivo con supuestos, métricas y una decisión justificable.

## Para interpretar los resultados
No basta con que una fórmula sea correcta: explica *qué decisión sería prudente*, cuál es la incertidumbre y qué datos faltan.


## Consultas SQL: cómo verlas y ejecutarlas

- [SQL 01: crear tablas y cargar datos](./sql/01_modelo_y_datos_postgresql.sql). Puedes **leer todas las instrucciones SQL directamente en GitHub** y ejecutarlas en pgAdmin o psql usando PostgreSQL.
- [SQL 02: consultas y retos](./sql/02_consultas_y_retos.sql). Incluye `SELECT`, filtros, `GROUP BY`, `JOIN`, funciones de ventana y preguntas para resolver.
- [Notebook de SQL en Colab](https://colab.research.google.com/github/mauriciorslrv/DS_basics/blob/main/00%20Fundamentos%20de%20Datos%20-%20Excel%20y%20SQL/notebooks/02_SQL_desde_cero.ipynb) permite **ejecutar consultas básicas** mediante SQLite en memoria sin configurar PostgreSQL. **No es exactamente el mismo motor**: para el módulo completo usa PostgreSQL.
- Localmente puedes ejecutar la notebook con Jupyter; la descarga de datos de ejemplo también funciona en Colab.

### PostgreSQL local

1. Instala PostgreSQL y crea una base de datos de pruebas desde pgAdmin o psql.
2. Abre [01_modelo_y_datos_postgresql.sql](./sql/01_modelo_y_datos_postgresql.sql) y ejecútalo contra esa base.
3. Abre [02_consultas_y_retos.sql](./sql/02_consultas_y_retos.sql) y ejecuta cada consulta para observar resultados.
4. Documenta qué preguntaste, qué obtuviste y cuál es la limitación del dato.

### Abrir notebooks en Colab

[Excel y calidad de datos](https://colab.research.google.com/github/mauriciorslrv/DS_basics/blob/main/00%20Fundamentos%20de%20Datos%20-%20Excel%20y%20SQL/notebooks/01_Excel_y_calidad_de_datos.ipynb) · [SQL desde cero](https://colab.research.google.com/github/mauriciorslrv/DS_basics/blob/main/00%20Fundamentos%20de%20Datos%20-%20Excel%20y%20SQL/notebooks/02_SQL_desde_cero.ipynb)
