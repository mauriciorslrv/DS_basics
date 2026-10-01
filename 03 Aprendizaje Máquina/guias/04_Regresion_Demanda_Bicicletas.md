# 04 · Regresión: demanda de bicicletas

> **En una frase:** estimar un conteo de alquileres y analizar errores en fechas posteriores.

📓 [Abrir notebook](../notebooks/04_Regresion_Demanda_Bicicletas.ipynb)

## Caso y selección de variables

El dataset UCI Bike Sharing registra alquileres horarios de Capital Bikeshare. **cnt** es la cantidad que queremos estimar. Se excluyen **casual** y **registered** porque desglosan el total; **instant** sólo identifica filas y **dteday** sirve para ordenar el tiempo. Calendario y condiciones registradas son predictores candidatos; el clima observado requiere cautela si se quiere predecir antes de la hora.

## Qué se practica

Se compara un baseline de mediana con un Random Forest usando partición cronológica. **MAE** comunica error promedio en bicicletas, **RMSE** penaliza más los errores grandes y **R²** ofrece otra referencia. Las visualizaciones ayudan a encontrar periodos con mayor error.

## Al terminar podrás

- establecer un baseline;
- entrenar un pipeline de regresión;
- leer MAE, RMSE y R² en contexto;
- buscar grupos con errores altos;
- discutir disponibilidad de información y límites de generalización.

## Mini reto

Prueba otro regresor y compara MAE/RMSE con el baseline. Investiga una hora con error alto y formula una explicación que podrías verificar con datos adicionales.

## Fuente

Fanaee-T, H. & Gama, J. (2013). UCI Bike Sharing, CC BY 4.0, DOI 10.24432/C5W894. [Ficha y atribución](https://archive.ics.uci.edu/dataset/275/bike+sharing+dataset).
