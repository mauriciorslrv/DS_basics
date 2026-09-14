# 📊 Módulo 02 · Análisis Estadístico de Datos

> **Propósito:** pasar de “tengo datos” a “puedo describir variabilidad, modelar incertidumbre, contrastar ideas, proyectar escenarios y apoyar decisiones”.

El bloque está diseñado como una progresión continua, no como un catálogo de fórmulas:

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
  ↓
qué decisión cambia
```

## 🗺️ Ruta sugerida

| Paso | Notebook | Pregunta que responde |
|---|---|---|
| 1 | [Fundamentos](./notebooks/1_Fundamentos_Analisis_Estadistico.ipynb) | ¿Qué estoy observando y qué tipo de dato es? |
| 2 | [Centro, dispersión y relaciones](./notebooks/2_Medidas_Principales.ipynb) | ¿Qué es típico, cuánto varía y qué tan sensible es el resumen? |
| 3 | [Distribuciones](./notebooks/3_Distribuciones_Probabilidad.ipynb) | ¿Qué resultados son posibles y qué tan plausibles son? |
| 4 | [Pruebas de hipótesis](./notebooks/4_Pruebas_Hipotesis.ipynb) | ¿Los datos son compatibles con una afirmación? |
| 5 | [Monte Carlo](./notebooks/5_MonteCarlo.ipynb) | ¿Qué pasa si proyecto miles de futuros posibles? |
| 6 | [Web y APIs](./notebooks/6_WebScrapping.ipynb) | ¿Cómo obtengo información externa y la convierto en un análisis reproducible? |

## 🧠 Regla del módulo

Una estadística nunca es una respuesta aislada. Pregunta siempre:

1. ¿qué representa el dato?;
2. ¿cómo se obtuvo?;
3. ¿cuánto varía?;
4. ¿qué incertidumbre existe?;
5. ¿qué supuestos estoy haciendo?;
6. ¿qué tan estable es el resultado?;
7. ¿qué decisión podría cambiar?;
8. ¿qué limitaciones quedan?

## 🎲 Seeds, reproducibilidad y robustez

Una seed fija permite reproducir un experimento.

En simulaciones y modelos con aleatoriedad, usar **múltiples seeds** permite medir cuánto depende una conclusión de una realización específica del generador. En Monte Carlo, el módulo distingue explícitamente:

- `seed` fija → reproducibilidad;
- `seed=None` → una realización nueva;
- múltiples streams → sensibilidad a la aleatoriedad;
- más simulaciones → menor error Monte Carlo y mejor estudio de convergencia.

Esto no corrige automáticamente sesgos de datos, variables omitidas, data leakage o modelos mal especificados.

## 📚 Guías rápidas

- [01 · Fundamentos](./guias/01_Fundamentos_Analisis_Estadistico.md)
- [02 · Centro, dispersión y relaciones](./guias/02_Medidas_Principales.md)
- [03 · Distribuciones](./guias/03_Distribuciones_Probabilidad.md)
- [04 · Pruebas de hipótesis](./guias/04_Pruebas_Hipotesis.md)
- [05 · Monte Carlo](./guias/05_MonteCarlo.md)
- [06 · Web scraping y APIs](./guias/06_WebScraping_APIs.md)

## 📖 Biblioteca complementaria

Las notebooks fueron simplificadas para priorizar intuición y práctica. Para profundizar en teoría, términos y métodos:

- [NIST/SEMATECH Engineering Statistics Handbook](https://www.nist.gov/programs-projects/nistsematech-engineering-statistics-handbook)
- [OpenIntro Statistics](https://www.openintro.org/book/os/)
- [SciPy Statistics Tutorial](https://docs.scipy.org/doc/scipy/tutorial/stats.html)
- [NumPy Random Generator](https://numpy.org/doc/stable/reference/random/generator.html)

Las referencias específicas de cada tema también aparecen dentro de su notebook.

➡️ Después continúa con [03 · Aprendizaje Máquina](../03%20Aprendizaje%20Máquina/README.md).
