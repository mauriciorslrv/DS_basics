# 02 · Medidas principales

> **En una frase:** un promedio nunca cuenta toda la historia; necesitamos centro, dispersión, forma y relaciones.

📓 [Abrir notebook](../notebooks/2_Medidas_Principales.ipynb)

## 🧭 Qué cubre la notebook

### Tendencia central
- media;
- mediana;
- moda;
- cuantiles.

### Dispersión
- rango;
- rango intercuartílico (IQR);
- varianza;
- desviación estándar;
- coeficiente de variación.

### Forma y relación
- asimetría;
- covarianza;
- coeficiente de correlación.

La notebook utiliza `peliculas.csv` y herramientas como `describe()` para explorar resúmenes, además de discutir por qué la media puede verse afectada por valores extremos y cuándo la mediana es más robusta.

## 🌍 Conexiones aplicadas

- **Salarios:** media alta con mediana menor puede revelar una distribución sesgada.
- **Precios:** dos productos pueden tener igual promedio pero distinta volatilidad.
- **Películas:** comparar recaudación, puntuaciones u otras variables sin quedarse con una sola cifra.
- **Operación:** el coeficiente de variación ayuda a comparar variabilidad relativa entre escalas distintas.

> Correlación describe asociación; por sí sola no demuestra causalidad.

## ✅ Al terminar deberías poder

- elegir una medida central adecuada;
- describir cuánto varían los datos;
- interpretar asimetría básica;
- leer una correlación con cautela;
- explicar por qué dos datasets con la misma media pueden comportarse de forma muy diferente.

## 🧪 Mini reto

Elige una variable numérica de `peliculas.csv`. Calcula media, mediana, desviación estándar e IQR. Después busca si hay valores extremos y decide qué medida comunicarías a alguien que sólo puede leer una cifra.

## 🔗 Sigue con

[03 · Distribuciones de probabilidad](./03_Distribuciones_Probabilidad.md)
