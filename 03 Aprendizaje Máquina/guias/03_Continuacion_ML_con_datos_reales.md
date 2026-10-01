# Continuación de ML con datos reales

> **Estado:** notebooks 03–06 implementadas en la rama de continuación.
>
> **Alcance:** cambios limitados al Módulo 03 · Aprendizaje Máquina. Las dos notebooks iniciales se conservan en sus rutas y los módulos 01 y 02 no se modifican.

## Propósito

Completar un ciclo introductorio de aprendizaje supervisado con dos preguntas contextualizadas: estimar demanda horaria de bicicletas y priorizar contactos de una campaña bancaria. Los datasets se descargan de UCI al ejecutar; no se guardan copias en el repositorio ni se generan filas dummy.

## Secuencia implementada

| Notebook | Pregunta aplicada | Dataset | Enfoque |
|---|---|---|---|
| 03 · [Preparar datos](../notebooks/03_Preparar_Datos_para_ML.ipynb) | ¿Qué información estaría disponible antes de anticipar demanda? | [UCI Bike Sharing](https://archive.ics.uci.edu/dataset/275/bike+sharing+dataset), Capital Bikeshare, 2011–2012 | Definir X/y, auditar datos, fuga, partición temporal y pipeline. |
| 04 · [Regresión](../notebooks/04_Regresion_Demanda_Bicicletas.ipynb) | ¿Cómo estimar alquileres por hora y cuánto se equivoca el modelo? | Bike Sharing | Baseline, regresor, MAE/RMSE/R², residuos, errores por hora. |
| 05 · [Clasificación](../notebooks/05_Clasificacion_Bank_Marketing.ipynb) | ¿Podemos priorizar contactos antes de llamar? | [UCI Bank Marketing](https://archive.ics.uci.edu/dataset/222/bank+marketing), campañas de un banco portugués | Etiquetas, clases desbalanceadas, variables mixtas, regresión logística, probabilidades y umbral. |
| 06 · [Evaluación](../notebooks/06_Evaluacion_Modelos_Bank_Marketing.ipynb) | ¿Qué errores cometen modelos y políticas distintas? | Bank Marketing | Train/valid/test, validación cruzada, métricas, umbral y test reservado. |

Ambos datasets declaran licencia **CC BY 4.0**. Cada notebook conserva fuente, atribución y DOI. La carga se realiza mediante **ucimlrepo**; los datos no se incorporan al repositorio.

## Decisiones y salvaguardas

### Bike Sharing · notebooks 03 y 04

- Cada fila representa una hora; **cnt** es el total de alquileres.
- **casual** y **registered** suman el objetivo: se excluyen para prevenir fuga directa.
- **instant** es identificador; **dteday** ordena y separa los periodos, no se usa como predictor inicial.
- Se reserva el bloque temporal más reciente para prueba.
- Los códigos de calendario se tratan como categorías cuando corresponde.
- Imputación, escalado y codificación se ajustan dentro de pipelines con datos de entrenamiento.
- El clima observado puede no estar disponible antes de pronosticar; una aplicación operativa necesitaría clima pronosticado.
- MAE se interpreta en bicicletas; RMSE penaliza más errores grandes; R² es complementaria. Se compara con un baseline y se advierte sobre generalización temporal y geográfica.

### Bank Marketing · notebooks 05 y 06

- El escenario de clasificación ocurre antes de llamar.
- **duration** se excluye porque se conoce al terminar la llamada; **campaign** se excluye porque resume el total de contactos de la campaña. Ninguna es una entrada segura para anticipar el contacto.
- Se inspecciona el desbalance y se compara con baseline.
- **pdays=999** significa ausencia de contacto previo, no 999 días normales; se crea una bandera y se prepara el valor por separado.
- Validación cruzada se usa dentro de entrenamiento; el umbral se selecciona en validación y el test queda reservado para la evaluación final.
- Se reportan precision, recall, F1, ROC-AUC, average precision y matriz de confusión. Ninguna métrica ni umbral es una decisión universal.
- Asociación predictiva no estima el efecto causal de llamar. El uso de una política requeriría evaluación experimental/causal, datos actuales y revisión de privacidad e impactos.

## Estructura didáctica

Cada notebook sigue la ruta: pregunta y contexto → objetivos → fuente/licencia/unidad → carga → inspección → intuición → preparación/baseline → modelo/evaluación → interpretación → límites → mini reto → atribución y siguiente tema.

Los números se calculan al ejecutar y se explican como resultados de ese procedimiento y muestra, no como valores universales.

## Fuentes canónicas

- Fanaee-T, H. & Gama, J. (2013). *Event labeling combining ensemble detectors and background knowledge*. UCI Bike Sharing. [Ficha/licencia](https://archive.ics.uci.edu/dataset/275/bike+sharing+dataset), DOI 10.24432/C5W894.
- Moro, S., Cortez, P. & Rita, P. (2014). *A Data-Driven Approach to Predict the Success of Bank Telemarketing*. UCI Bank Marketing. [Ficha/licencia](https://archive.ics.uci.edu/dataset/222/bank+marketing), DOI 10.24432/C5K306.
- Scikit-learn: [pipelines](https://scikit-learn.org/stable/modules/compose.html), [common pitfalls](https://scikit-learn.org/stable/common_pitfalls.html), [cross-validation](https://scikit-learn.org/stable/modules/cross_validation.html), [classification metrics](https://scikit-learn.org/stable/modules/model_evaluation.html#classification-metrics).
