# 04 · Regresión: demanda de bicicletas

> **En una frase:** estimar un conteo de alquileres y analizar los errores en fechas posteriores.

📓 [Abrir notebook](../notebooks/04_Regresion_Demanda_Bicicletas.ipynb)

## Caso y conceptos

Con el dataset real UCI Bike Sharing estimamos el total de alquileres por hora. Se compara un baseline de mediana con un Random Forest, usando una partición cronológica. MAE comunica error en bicicletas, RMSE da más peso a errores grandes y R² aporta una referencia complementaria. También se observan predicciones y error por hora.

La notebook advierte que los valores climáticos observados pueden no estar disponibles antes de pronosticar, y que un resultado en un periodo de prueba no garantiza transferencia a otra ciudad o temporada.

## Al terminar podrás

- establecer un baseline;
- entrenar un pipeline de regresión;
- leer MAE, RMSE y R² en contexto;
- buscar grupos o periodos con errores altos;
- discutir límites de disponibilidad temporal y generalización.

## Mini reto

Prueba otro regresor y explica si mejora sobre el baseline en MAE y RMSE. Plantea una hipótesis para una hora con mayor error.

## Fuente

UCI Bike Sharing, CC BY 4.0, DOI 10.24432/C5W894. [Ficha y atribución](https://archive.ics.uci.edu/dataset/275/bike+sharing+dataset).