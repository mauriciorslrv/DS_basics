# 05 · Simulación de Monte Carlo

> **En una frase:** cuando una sola respuesta oculta la incertidumbre, simular muchos escenarios puede mostrar el rango de futuros posibles.

📓 [Abrir notebook](../notebooks/5_MonteCarlo.ipynb)

## 🧭 Qué cubre la notebook

La notebook define Monte Carlo como una técnica computacional basada en muestreo aleatorio repetido para aproximar fenómenos complejos o inciertos. Presenta aplicaciones en ingeniería, finanzas/riesgo, física, planeación de proyectos y juegos.

El flujo general que desarrolla es:

1. definir el problema o sistema;
2. construir un modelo matemático;
3. definir distribuciones de entrada;
4. generar muestras aleatorias;
5. evaluar el modelo;
6. repetir muchas veces;
7. analizar los resultados.

También trabaja ejemplos como:

- estimación de π;
- muestreo uniforme y normal con NumPy;
- simulación de lanzamientos de dado;
- un escenario probabilístico relacionado con propagación de enfermedad;
- **proyecto de simulación del costo de un proyecto de TI durante 12 meses**, combinando costos fijos y costos aleatorios.

## 🌍 Por qué el caso de TI es importante

Un presupuesto tradicional podría entregar una cifra. Monte Carlo permite pensar en una distribución:

```text
salarios + renta + licencias
          +
infraestructura / tecnología / mantenimiento inciertos
          ↓
 miles de escenarios de costo total
          ↓
rango, riesgo y probabilidad
```

Ese cambio de “un número” a “escenarios” es una base potente para toma de decisiones.

## 🧪 Mini reto

Amplía el caso de TI con una contingencia: en cada mes existe cierta probabilidad de un gasto extraordinario. Compara cómo cambia la distribución del costo anual respecto al modelo original.

## 🚀 Posible evolución del proyecto

Como extensión futura —no parte obligatoria de la notebook actual— este ejercicio puede crecer hacia percentiles de presupuesto, escenarios optimista/base/pesimista, sensibilidad de variables y un dashboard de riesgo.

## 🔗 Sigue con

[06 · Web scraping y APIs](./06_WebScraping_APIs.md)
