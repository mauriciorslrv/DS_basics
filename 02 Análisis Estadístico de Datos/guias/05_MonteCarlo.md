# 05 · Simulación de Monte Carlo

> **En una frase:** cuando una sola cifra oculta la incertidumbre, simular muchos escenarios permite ver un rango de futuros posibles.

📓 [Abrir notebook](../notebooks/5_MonteCarlo.ipynb)

## Qué cubre

- idea general de Monte Carlo;
- ejemplo breve de π;
- **proyección de cientos/miles de trayectorias mensuales**;
- caso principal de presupuesto anual con eventos inciertos;
- P50, P90/P95 y probabilidad de excedencia;
- comparación entre seed fija, seed cambiante y múltiples seeds;
- `SeedSequence.spawn()` para streams reproducibles;
- convergencia al aumentar el número de escenarios;
- conexión con estabilidad experimental en Machine Learning.

## Por qué conservar la proyección de escenarios

Monte Carlo no se entiende bien si sólo mostramos una media final. La notebook conserva explícitamente:

```text
muchas trayectorias posibles
        ↓
bandas de percentiles
        ↓
distribución al final del horizonte
        ↓
riesgo y decisión
```

Eso permite distinguir entre “valor esperado” y “rango de futuros posibles”.

## Seeds: el matiz importante

- **seed fija:** reproduce exactamente el experimento.
- **seed cambiante (`None`):** genera una nueva realización.
- **múltiples seeds:** miden sensibilidad a la aleatoriedad y estabilidad.
- **más simulaciones:** reducen el error Monte Carlo y permiten estudiar convergencia.

Varias seeds no corrigen sesgo de datos ni un modelo mal planteado.

## Material adicional

- [NumPy Generator](https://numpy.org/doc/stable/reference/random/generator.html)
- [NumPy SeedSequence](https://numpy.org/doc/stable/reference/random/bit_generators/generated/numpy.random.SeedSequence.html)
- [SciPy Statistics](https://docs.scipy.org/doc/scipy/tutorial/stats.html)

## Sigue con

[06 · Web scraping y APIs](./06_WebScraping_APIs.md)
