# 06 · Visualización con Matplotlib

> **En una frase:** usar gráficas para hacer visibles patrones que una tabla puede ocultar.

📓 [Abrir notebook](../notebooks/Plots.ipynb)

## 🧭 Qué cubre la notebook

- introducción a Matplotlib;
- arreglos `x`/`y` y gráfica de línea;
- títulos y etiquetas;
- trabajo con `fig` y `ax`;
- integración Pandas + Matplotlib;
- ejemplo con una serie de PIB;
- leyendas;
- lectura de `avocado.csv`;
- conversión de fechas e índice temporal;
- filtrado de Albany y tipo `conventional`;
- visualización de `AveragePrice`;
- promedio por región y comparación/selección de regiones, incluyendo Albany y WestTexNewMexico.

## 🧠 La pregunta antes de la gráfica

Una buena visualización empieza con una pregunta:

```text
¿cambió con el tiempo?
¿qué grupo es diferente?
¿dónde aparece una anomalía?
¿qué variable parece moverse con otra?
```

Después eliges la gráfica; no al revés.

## 🌍 Conexiones aplicadas

- evolución mensual de ventas;
- variación de precios entre regiones;
- desempeño por sucursal;
- monitoreo de indicadores;
- comunicar un hallazgo a una persona no técnica.

El caso del precio del aguacate muestra precisamente cómo un dataset temporal y regional puede pasar de tabla a historia visual.

## 🧪 Mini reto

Usa `avocado.csv` u otro dataset temporal y crea dos vistas del mismo problema: una tendencia en el tiempo y una comparación entre grupos. Escribe debajo una sola frase con el hallazgo más importante de cada gráfica.

## 🔗 Continúa

Ya tienes la base para trabajar con datos. Sigue con [02 · Análisis Estadístico de Datos](../../02%20Análisis%20Estadístico%20de%20Datos/README.md).
