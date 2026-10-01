# 06 · Evaluar modelos de clasificación

> **En una frase:** comparar modelos y umbrales sin contaminar la evaluación final.

📓 [Abrir notebook](../notebooks/06_Evaluacion_Modelos_Bank_Marketing.ipynb)

## Caso y conceptos

Continuamos con Bank Marketing y la pregunta de priorización antes de llamar. Se reservan conjuntos de entrenamiento, validación y test. La validación cruzada se realiza sólo dentro de entrenamiento; modelo y umbral se eligen con validación; el test se usa una sola vez al final.

Se comparan regresión logística y árbol de decisión con métricas de clasificación desbalanceada: precision, recall, F1, ROC-AUC, average precision y matriz de confusión. Se discute capacidad operativa, limitaciones causales, privacidad y generalización.

## Al terminar podrás

- distinguir entrenamiento, validación y prueba;
- explicar qué pregunta responde cada métrica;
- elegir un umbral sin mirar el test;
- comparar una política con una referencia;
- indicar por qué una asociación predictiva no mide el efecto causal de llamar.

## Mini reto

Evalúa una política de contacto para el 10 % con mayor puntuación y compárala con la prevalencia base. Propón un experimento que permita estimar el efecto de la política.

## Fuente

UCI Bank Marketing, CC BY 4.0, DOI 10.24432/C5K306. [Ficha y atribución](https://archive.ics.uci.edu/dataset/222/bank+marketing).