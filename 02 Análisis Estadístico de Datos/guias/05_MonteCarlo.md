# 05 · Simulación de Monte Carlo

> **En una frase:** cuando una sola cifra oculta la incertidumbre, simular muchos escenarios permite ver un rango de futuros posibles.

📓 [Abrir notebook](../notebooks/5_MonteCarlo.ipynb)

## Qué cubre
- idea general de Monte Carlo;
- ejemplo breve de π;
- caso principal de presupuesto anual con eventos inciertos;
- percentiles y probabilidad de excedencia;
- convergencia;
- **múltiples seeds para evaluar estabilidad**;
- conexión con Machine Learning.

## Seeds: el matiz importante
Una seed fija permite reproducibilidad. Varias seeds permiten comprobar cuánto cambia la conclusión debido a la aleatoriedad del proceso computacional.

No eliminan sesgo estructural ni vuelven exacta la simulación por sí solas. La precisión mejora aumentando muestras independientes y verificando convergencia.

En ML, repetir con varias seeds ayuda a medir sensibilidad a particiones, inicializaciones y otros componentes aleatorios.

## Sigue con
[06 · Web scraping y APIs](./06_WebScraping_APIs.md)
