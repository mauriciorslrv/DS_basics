# 05 · Pandas

> **En una frase:** convertir datos tabulares en estructuras que podamos inspeccionar, seleccionar y preparar para análisis.

📓 [Abrir notebook](../notebooks/Pandas.ipynb)

## 🧭 Qué cubre la notebook

### Series
- creación desde listas;
- etiquetas personalizadas;
- selección de valores;
- operaciones entre Series;
- valores únicos.

### DataFrames
- creación desde diccionarios;
- `head()` y exploración inicial;
- columnas;
- selección con `iloc` y `loc`;
- slicing e indexación;
- valores únicos.

### Flujo con CSV
- `pd.read_csv`;
- revisión de primeras filas;
- `shape`;
- nombres de columnas/encabezados;
- inspección de valores y categorías.

## 🌍 Conexiones aplicadas

Piensa en un DataFrame como una tabla de:

- ventas y transacciones;
- clientes y segmentos;
- empleados;
- experimentos;
- inventario;
- resultados de una encuesta.

La primera pregunta rara vez debería ser “¿qué modelo uso?”. Antes conviene saber **qué columnas existen, cuántas observaciones hay, qué categorías aparecen y qué representa cada fila**.

## ✅ Al terminar deberías poder

- diferenciar Series y DataFrame;
- cargar un CSV;
- inspeccionar su forma y columnas;
- seleccionar filas/columnas por posición o etiqueta;
- comenzar una exploración sin modificar ciegamente los datos.

## 🧪 Mini reto

Carga un CSV propio o público. Responde cinco preguntas sin hacer todavía Machine Learning: ¿cuántas filas hay?, ¿qué representa una fila?, ¿qué columnas hay?, ¿qué categorías se repiten?, ¿qué variable te gustaría explicar?

## 🔗 Sigue con

[06 · Visualización con Matplotlib](./06_Visualizacion_Matplotlib.md)
