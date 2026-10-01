# 05 · Clasificación: Bank Marketing

> **En una frase:** clasificar una suscripción sí/no con información disponible antes de realizar una llamada.

📓 [Abrir notebook](../notebooks/05_Clasificacion_Bank_Marketing.ipynb)

## Caso y conceptos

El dataset UCI Bank Marketing describe campañas telefónicas de un banco portugués. La etiqueta indica si hubo suscripción. Se explora el desbalance de clases, se excluyen duration y campaign: una ocurre después de la llamada y la otra resume los contactos totales de la campaña y se interpreta pdays=999 como ausencia de contacto previo.

El pipeline separa variables numéricas y categóricas. Se compara regresión logística con un baseline y se examina cómo los umbrales modifican precision, recall y F1.

## Al terminar podrás

- explicar por qué accuracy sola puede engañar;
- preparar variables mixtas dentro de un pipeline;
- convertir puntuaciones en decisiones mediante un umbral;
- describir falsos positivos y falsos negativos;
- distinguir predicción de causalidad.

## Mini reto

Compara umbrales 0.30, 0.50 y 0.70. Escoge una política para un equipo con capacidad limitada y justifica los costos que priorizas.

## Fuente

UCI Bank Marketing, CC BY 4.0, DOI 10.24432/C5K306. [Ficha y atribución](https://archive.ics.uci.edu/dataset/222/bank+marketing).