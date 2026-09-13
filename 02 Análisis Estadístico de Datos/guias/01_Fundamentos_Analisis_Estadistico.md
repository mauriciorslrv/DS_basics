# 01 · Fundamentos del análisis estadístico

> **En una frase:** antes de calcular, necesitamos entender qué observamos y qué pregunta queremos responder.

📓 [Abrir notebook](../notebooks/1_Fundamentos_Analisis_Estadistico.ipynb)

## 🧭 Qué cubre la notebook

La notebook presenta la estadística como una forma de recolectar y analizar información para explicar condiciones y apoyar decisiones bajo incertidumbre. Trabaja con:

- población y muestra;
- estadística descriptiva e inferencial;
- variables cualitativas/categóricas: nominales y ordinales;
- variables cuantitativas/numéricas: discretas y continuas;
- visualización con Matplotlib, Pandas, NumPy y Seaborn;
- exploración del dataset `IBM-HR-Employee-Attrition.csv`, incluyendo forma e información de sus variables.

La notebook menciona contextos como demanda, control de procesos, visitantes de un sitio, finanzas, clientes y tránsito.

## 🧠 Por qué importa clasificar variables

No todas las columnas significan lo mismo. Una categoría como departamento no debe interpretarse como una medición continua; una edad sí permite operaciones que no tienen sentido sobre un nombre de puesto.

```text
pregunta → población/muestra → variable → tipo → resumen/gráfica adecuados
```

## 🌍 Conexión aplicada

El dataset de attrition permite imaginar preguntas como: ¿qué perfiles abandonan más?, ¿qué variables describen mejor a los grupos?, ¿qué necesitaríamos antes de afirmar causalidad? La notebook sirve como punto de entrada para distinguir **describir** de **inferir**.

## 🧪 Mini reto

Toma cinco columnas del dataset de RR. HH. Clasifica cada una por tipo de variable y propone una gráfica apropiada. Después escribe qué afirmación sí podrías hacer con esa gráfica y cuál sería demasiado fuerte.

## 🔗 Sigue con

[02 · Medidas principales](./02_Medidas_Principales.md)
