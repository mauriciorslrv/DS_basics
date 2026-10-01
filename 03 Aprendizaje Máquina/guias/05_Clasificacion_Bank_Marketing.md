# 05 · Clasificación: Bank Marketing

> **En una frase:** clasificar una suscripción sí/no con información disponible antes de llamar.

📓 [Abrir notebook](../notebooks/05_Clasificacion_Bank_Marketing.ipynb)

## Caso y selección de variables

UCI Bank Marketing describe campañas telefónicas de una institución bancaria portuguesa. Cada fila representa un contacto y **y** indica si hubo suscripción. Para priorizar antes de llamar se conservan campos disponibles del cliente, contactos previos y contexto económico. Se excluyen **duration**, que sólo se conoce después de la llamada, y **campaign**, que resume contactos hechos durante la campaña. **pdays=999** representa ausencia de contacto anterior, no 999 días.

## Qué se practica

Se explora el desbalance, se preparan variables mixtas en un pipeline y se compara regresión logística con un baseline. Precision, recall, F1 y la matriz de confusión muestran consecuencias distintas de falsos positivos y falsos negativos. La predicción no estima el efecto causal de llamar.

La notebook compara umbrales para enseñar el intercambio entre métricas; esa demostración consulta el test y no es un método para elegir el umbral final. Para una decisión válida, usa el flujo train/valid/test de Notebook 06.

## Al terminar podrás

- explicar por qué accuracy sola puede engañar;
- preparar columnas numéricas y categóricas;
- justificar las exclusiones según el momento de predicción;
- describir falsos positivos y falsos negativos;
- distinguir predicción de causalidad.

## Mini reto

Compara umbrales 0.30, 0.50 y 0.70 como ejercicio exploratorio. Propón una política para un equipo con capacidad limitada y explica qué errores priorizarías. Luego diseña cómo seleccionar esa política con validación sin tocar el test final.

## Fuente

Moro, S., Cortez, P. & Rita, P. (2014). UCI Bank Marketing, CC BY 4.0, DOI 10.24432/C5K306. [Ficha, variables y atribución](https://archive.ics.uci.edu/dataset/222/bank+marketing).
