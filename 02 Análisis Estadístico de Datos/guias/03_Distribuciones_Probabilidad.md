# 03 · Distribuciones de probabilidad

> **En una frase:** modelar incertidumbre significa describir no sólo qué puede pasar, sino con qué probabilidad.

📓 [Abrir notebook](../notebooks/3_Distribuciones_Probabilidad.ipynb)

## 🧭 Qué cubre la notebook

- variable aleatoria y distribución de probabilidad;
- ejemplos de variables como clientes por día, colesterol, peso de vehículos y satisfacción;
- condición de que la probabilidad total sea 1;
- distribución uniforme con generación de muestras (`uniform.rvs`) y visualización;
- diferencia entre variables/distribuciones discretas y continuas;
- PMF para casos discretos y PDF para continuos;
- distribución normal;
- papel de la media y la desviación estándar en su forma;
- evaluación/visualización mediante `scipy.stats.norm.pdf`.

## 🧠 De dato observado a resultado posible

```text
valor observado ≠ único futuro posible

modelo de probabilidad
        ↓
rango de resultados + qué tan plausibles son
```

## 🌍 Conexiones aplicadas

- número de clientes que llegan en un periodo;
- cantidad de defectos en producción;
- medidas biométricas o físicas;
- tiempos y variabilidad de procesos;
- incertidumbre que después puede alimentar una simulación.

Estas conexiones amplían el contexto de los conceptos; no implican que todos esos casos estén implementados en la notebook.

## 🧪 Mini reto

Genera dos distribuciones normales con la misma media y desviaciones estándar distintas. Grafícalas juntas y explica, sin fórmulas adicionales, qué cambia en términos de incertidumbre.

## 🔗 Sigue con

[04 · Pruebas de hipótesis](./04_Pruebas_Hipotesis.md)
