# 05 · Pandas: trabajar con datos

> **En una frase:** aprender a inspeccionar, seleccionar, transformar y resumir datos tabulares con intención.

📓 [Abrir notebook](../notebooks/05_Pandas_trabajar_con_datos.ipynb)

## 🧭 Qué cubre la notebook

- crear un `DataFrame` desde un diccionario;
- diferencia básica entre `Series` y `DataFrame`;
- inspección inicial con `shape`, columnas, `head()` e `info()`;
- selección de columnas;
- filtrado de filas mediante condiciones;
- ordenamiento;
- creación de nuevas columnas;
- identificación de valores faltantes;
- decisiones básicas de imputación;
- agrupación y resumen con `groupby` y `agg`;
- lectura de CSV con `pd.read_csv`;
- encadenamiento de transformaciones con `assign`, `query` y `sort_values`.

## 🧠 Idea central

```text
inspeccionar → seleccionar → transformar → resumir → validar
```

Antes de modelar o limpiar agresivamente, conviene entender **qué representa una fila, qué significa cada columna y qué calidad tienen los datos**.

## 🌍 Conexiones aplicadas

Un DataFrame puede representar:

- ventas y transacciones;
- clientes y segmentos;
- inventario;
- encuestas;
- experimentos;
- métricas de una aplicación;
- resultados de sensores o procesos.

`groupby` aparece cuando hacemos preguntas como: **“¿cómo cambia esta métrica entre categorías, regiones o periodos?”**

## ✅ Al terminar deberías poder

- distinguir una `Series` de un `DataFrame`;
- inspeccionar una tabla antes de modificarla;
- filtrar y ordenar observaciones;
- crear métricas derivadas;
- reconocer valores faltantes y justificar una decisión básica sobre ellos;
- agrupar datos y calcular resúmenes;
- cargar un CSV y comenzar una exploración reproducible.

## 🧪 Mini reto

Construye un DataFrame con al menos cinco observaciones y tres columnas. Filtra una condición, crea una columna nueva, agrupa por una categoría y calcula una métrica resumen.

## 📚 Para consultar

- [pandas — Getting started](https://pandas.pydata.org/docs/getting_started/index.html)
- [10 minutes to pandas](https://pandas.pydata.org/docs/user_guide/10min.html)
- [`DataFrame.groupby`](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.groupby.html)
- [Working with missing data](https://pandas.pydata.org/docs/user_guide/missing_data.html)

## 🔗 Sigue con

[06 · Visualizar para entender](./06_Visualizacion_Matplotlib.md)
