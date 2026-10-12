# 03 · Preparar datos para ML

> **En una frase:** definir predictores y objetivo antes de modelar y evitar fuga de información.

📓 [Abrir notebook](../notebooks/03_Preparar_Datos_para_ML.ipynb)

## Caso y origen

Usamos **UCI Bike Sharing**, con registros horarios de Capital Bikeshare en Washington, D. C. Cada fila representa una hora y el objetivo **cnt** es el total de alquileres. Los conteos **casual** y **registered** son partes de ese total, así que se excluyen. **instant** es un identificador y **dteday** se conserva para ordenar la partición temporal, no para predecir.

## Qué se practica

Inspeccionamos tipos, faltantes, duplicados y distribuciones; identificamos fuga; reservamos las fechas recientes como prueba; y ajustamos imputación, escalado y codificación dentro de un pipeline. Se explica que las variables válidas dependen de qué información estaría disponible al pronosticar. Por ejemplo, el clima observado en la hora quizá deba reemplazarse por un pronóstico disponible antes.

## Al terminar podrás

- explicar qué representan X e y;
- justificar la inclusión o exclusión de columnas;
- reconocer fuga directa y temporal;
- hacer una partición cronológica;
- explicar por qué el preprocesamiento se ajusta sólo con entrenamiento.

## Mini reto

Mueve el corte a 70 % y 90 %. Describe cómo cambia el periodo de prueba. Plantea un escenario con clima pronosticado y otro sin información meteorológica: ¿qué columnas usarías en cada uno y por qué?

## Fuente

Fanaee-T, H. & Gama, J. (2013). UCI Bike Sharing, CC BY 4.0, DOI 10.24432/C5W894. [Ficha, variables y atribución](https://archive.ics.uci.edu/dataset/275/bike+sharing+dataset).
