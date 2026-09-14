# 04 · Pruebas de hipótesis

> **En una frase:** transformar una afirmación en una pregunta que pueda confrontarse con evidencia, sin confundir significancia con importancia práctica.

📓 [Abrir notebook](../notebooks/4_Pruebas_Hipotesis.ipynb)

## Qué cubre

- hipótesis nula H₀ e hipótesis alternativa H₁;
- alternativas unilaterales y bilaterales;
- inspección de los datos antes de la prueba;
- Welch t-test para dos muestras independientes;
- interpretación responsable del p-value;
- tamaño de efecto;
- intervalo de confianza para una diferencia;
- supuestos, diseño, sesgo y pruebas múltiples.

## Por qué se combinan p-value, efecto e intervalo

Un p-value pequeño no responde cuánto importa la diferencia. El tamaño de efecto aporta magnitud y el intervalo de confianza muestra la incertidumbre compatible con el procedimiento.

```text
pregunta → H₀/H₁ → diseño → datos → efecto + incertidumbre + p-value → interpretación
```

## Material adicional

- [SciPy · Hypothesis tests](https://docs.scipy.org/doc/scipy/tutorial/stats/hypothesis_tests.html)
- [ASA · Statement on Statistical Significance and P-Values](https://www.amstat.org/asa/files/pdfs/p-valuestatement.pdf)
- [NIST · Comparing means](https://www.itl.nist.gov/div898/handbook/prc/section3/prc31.htm)

## Términos clave

**H₀ · H₁ · p-value · significancia · efecto · intervalo de confianza · error estándar · potencia · prueba unilateral · prueba bilateral**

## Sigue con

[05 · Monte Carlo](./05_MonteCarlo.md)
