# 📊 Módulo 02 · Análisis Estadístico de Datos

> **Propósito:** pasar de “tengo datos” a “puedo describir variabilidad, modelar incertidumbre, contrastar ideas y explorar escenarios para apoyar decisiones”.

El bloque fue reorganizado para evitar listas de fórmulas y ejemplos desconectados. La progresión ahora sigue una sola lógica:

```text
pregunta
  ↓
qué estoy observando
  ↓
cómo se comportan los datos
  ↓
qué podría ocurrir
  ↓
qué evidencia tengo
  ↓
qué escenarios son posibles
  ↓
cómo obtengo nuevas fuentes
```

## 🗺️ Ruta sugerida

| Paso | Notebook | Pregunta que responde |
|---|---|---|
| 1 | [Fundamentos](./notebooks/1_Fundamentos_Analisis_Estadistico.ipynb) | ¿Qué estoy observando y qué tipo de dato es? |
| 2 | [Centro, dispersión y relaciones](./notebooks/2_Medidas_Principales.ipynb) | ¿Qué es típico, cuánto varía y qué tan sensible es el resumen? |
| 3 | [Distribuciones](./notebooks/3_Distribuciones_Probabilidad.ipynb) | ¿Qué resultados son posibles y qué tan plausibles son? |
| 4 | [Pruebas de hipótesis](./notebooks/4_Pruebas_Hipotesis.ipynb) | ¿Los datos son compatibles con una afirmación? |
| 5 | [Monte Carlo](./notebooks/5_MonteCarlo.ipynb) | ¿Qué pasa si simulo miles de futuros posibles? |
| 6 | [Web y APIs](./notebooks/6_WebScrapping.ipynb) | ¿Cómo obtengo información externa de forma reproducible y responsable? |

## 🧠 Regla del módulo

Una estadística nunca es una respuesta aislada. Pregunta siempre:

1. ¿qué representa el dato?;
2. ¿cómo se obtuvo?;
3. ¿cuánto varía?;
4. ¿qué incertidumbre existe?;
5. ¿qué supuestos estoy haciendo?;
6. ¿qué decisión podría cambiar?;
7. ¿qué limitaciones quedan?

## 🎲 Sobre semillas y reproducibilidad

Una seed fija permite reproducir un experimento. En simulaciones y modelos con aleatoriedad, trabajar con **múltiples seeds** ayuda a evaluar si una conclusión depende demasiado de una realización concreta.

Esto no corrige automáticamente sesgos de datos o del modelo. Sirve para medir **sensibilidad a la aleatoriedad** y estabilidad experimental. La precisión de Monte Carlo depende principalmente del número efectivo de muestras y de verificar convergencia.

## 📚 Guías rápidas

- [01 · Fundamentos](./guias/01_Fundamentos_Analisis_Estadistico.md)
- [02 · Centro, dispersión y relaciones](./guias/02_Medidas_Principales.md)
- [03 · Distribuciones](./guias/03_Distribuciones_Probabilidad.md)
- [04 · Pruebas de hipótesis](./guias/04_Pruebas_Hipotesis.md)
- [05 · Monte Carlo](./guias/05_MonteCarlo.md)
- [06 · Web scraping y APIs](./guias/06_WebScraping_APIs.md)

➡️ Después continúa con [03 · Aprendizaje Máquina](../03%20Aprendizaje%20Máquina/README.md).
