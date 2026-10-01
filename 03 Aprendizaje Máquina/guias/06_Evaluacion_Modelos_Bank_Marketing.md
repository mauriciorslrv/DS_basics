# 06 · Evaluar modelos de clasificación

> **En una frase:** comparar modelos y umbrales sin contaminar la evaluación final.

📓 [Abrir notebook](../notebooks/06_Evaluacion_Modelos_Bank_Marketing.ipynb)

## Caso y selección de variables

Continuamos con Bank Marketing y la decisión previa a llamar. **y** indica suscripción sí/no. Excluimos **duration** (resultado de la llamada actual) y **campaign** (resumen de contactos de campaña); tratamos **pdays=999** como ausencia de contacto previo. Las demás columnas candidatas se interpretan con la ficha UCI y con el momento en que estarían disponibles.

## Qué se practica

Se reservan entrenamiento, validación y test. La validación cruzada compara estabilidad sólo dentro de entrenamiento; modelo y umbral se eligen con validación; el test se usa una vez al final. Se comparan regresión logística y árbol de decisión y se revisan precision, recall, F1, ROC-AUC, average precision y matriz de confusión.

Elegir F1 es una decisión de demostración, no una política universal. El costo de errores y la capacidad de contacto deben definirse con evidencia del uso previsto. La asociación predictiva no demuestra que llamar cause la suscripción.

## Al terminar podrás

- distinguir entrenamiento, validación y prueba;
- explicar qué pregunta responde cada métrica;
- elegir un umbral sin mirar el test;
- señalar límites de una evaluación histórica;
- distinguir predicción de una estimación causal.

## Mini reto

Evalúa una política para el 10 % con mayor puntuación usando validación. Compara en el test final la política elegida con la prevalencia base y propón un experimento que permita estimar el efecto de la estrategia.

## Fuente

Moro, S., Cortez, P. & Rita, P. (2014). UCI Bank Marketing, CC BY 4.0, DOI 10.24432/C5K306. [Ficha, variables y atribución](https://archive.ics.uci.edu/dataset/222/bank+marketing).
