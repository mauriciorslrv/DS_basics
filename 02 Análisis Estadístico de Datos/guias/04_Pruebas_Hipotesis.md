# 04 · Pruebas de hipótesis

> **En una frase:** transformar una afirmación en una pregunta que pueda confrontarse con evidencia.

📓 [Abrir notebook](../notebooks/4_Pruebas_Hipotesis.ipynb)

## 🧭 Qué cubre la notebook

- objetivo de una prueba de hipótesis;
- hipótesis nula **H₀** e hipótesis alternativa **H₁**;
- ejemplos conceptuales: moneda justa, media de altura, efecto de un tratamiento y diferencias entre grupos;
- ejemplo de una media poblacional de 1.70 m: `H₀: μ = 1.70` frente a `H₁: μ ≠ 1.70`;
- pruebas bilaterales y unilaterales;
- idea del estadístico de prueba, incluyendo la relación entre diferencia observada y error estándar;
- intuición del p-value.

## 🧠 La lógica

```text
afirmación
   ↓
H₀ / H₁
   ↓
datos de muestra
   ↓
estadístico
   ↓
evidencia compatible o poco compatible con H₀
```

Una prueba no convierte incertidumbre en certeza. Organiza la evidencia bajo supuestos específicos.

## 🌍 Conexiones aplicadas

Como extensión práctica, la misma lógica aparece al preguntar si:

- una nueva versión cambia una tasa de conversión;
- un proceso modifica el tiempo promedio;
- dos grupos presentan diferencias medibles;
- una intervención parece asociarse con un cambio.

En un proyecto real todavía habría que revisar diseño, independencia, tamaño de muestra y supuestos antes de sacar conclusiones.

## 🧪 Mini reto

Escribe H₀ y H₁ para esta pregunta: “¿el nuevo proceso redujo el tiempo promedio por debajo de 20 minutos?”. Identifica si tu alternativa es unilateral o bilateral y explica por qué.

## 🔗 Sigue con

[05 · Monte Carlo](./05_MonteCarlo.md)
