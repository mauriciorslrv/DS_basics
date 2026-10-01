# 03 · Preparar datos para ML

> **En una frase:** aprender a definir predictores y objetivo y evitar fuga de información antes de entrenar.

📓 [Abrir notebook](../notebooks/03_Preparar_Datos_para_ML.ipynb)

## Caso y conceptos

Usamos alquileres horarios de Capital Bikeshare (UCI Bike Sharing). Cada fila es una hora y el objetivo es el total de alquileres. Se inspeccionan tipos, faltantes, duplicados y distribuciones; se identifica que los conteos casuales y registrados suman el objetivo y deben excluirse.

La partición es cronológica: entrenar con fechas anteriores y reservar las más recientes como prueba. Imputación, escalado y one-hot se ajustan dentro de un pipeline para evitar que el test influya en las transformaciones.

## Al terminar podrás

- explicar qué representan X e y;
- reconocer columnas que causan leakage;
- hacer una partición temporal;
- construir un pipeline de preprocesamiento;
- explicar por qué disponibilidad de predictores depende del momento de uso.

## Mini reto

Mueve el corte a 70 % y 90 %. Describe cómo cambia el periodo de prueba y qué información necesitarías para estimar demanda antes de conocer el clima observado.

## Fuente

UCI Bike Sharing, CC BY 4.0, DOI 10.24432/C5W894. [Ficha y atribución](https://archive.ics.uci.edu/dataset/275/bike+sharing+dataset).