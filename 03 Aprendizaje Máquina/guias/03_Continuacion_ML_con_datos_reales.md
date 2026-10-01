# Ruta de continuación de ML con datos reales

> **Estado:** propuesta curricular documentada; las notebooks 03–06 aún están por construir.
>
> **Alcance:** esta continuación sólo modifica el Módulo 03 · Aprendizaje Máquina. Las dos notebooks existentes se conservan en sus rutas actuales; no se mueven ni se reescriben.

## Propósito

Completar un primer ciclo de aprendizaje supervisado con dos preguntas de contexto real: estimar demanda horaria de bicicletas y priorizar contactos de una campaña bancaria. Los datasets se descargan desde UCI al ejecutar las notebooks; no se guardan copias de datos en el repositorio ni se usan filas dummy generadas artificialmente.

## Secuencia propuesta

| Notebook | Pregunta aplicada | Dataset real | Aprendizaje principal |
|---|---|---|---|
| 03 · Preparar datos para ML | ¿Qué información puede estar disponible antes de anticipar la demanda horaria? | [UCI Bike Sharing](https://archive.ics.uci.edu/dataset/275/bike+sharing+dataset), Washington D. C., 2011–2012 | Definir observación, predictores y objetivo; auditar datos; reconocer fuga; particionar cronológicamente; preprocesar dentro de un pipeline. |
| 04 · Regresión: demanda de bicicletas | ¿Cómo estimar alquileres por hora y cuánto se equivoca el modelo? | El mismo Bike Sharing | Baseline, regresor, MAE/RMSE/R², residuos, errores por hora y límites temporales. |
| 05 · Clasificación: Bank Marketing | ¿Podemos priorizar contactos antes de realizar una llamada? | [UCI Bank Marketing](https://archive.ics.uci.edu/dataset/222/bank+marketing), campañas telefónicas de un banco portugués | Etiquetas y clases desbalanceadas, variables mixtas, baseline, regresión logística, probabilidades y umbral. |
| 06 · Evaluar modelos de clasificación | ¿Qué errores comete cada política y cómo elegir un umbral con evidencia? | El mismo Bank Marketing | Train/valid/test, validación cruzada, precision, recall, F1, ROC-AUC, average precision y matriz de confusión. |

Los dos conjuntos UCI declaran licencia **CC BY 4.0**. Las notebooks deberán conservar atribución, enlace y DOI/ficha del dataset. La descarga será explícita y reproducible mediante **ucimlrepo**; no se subirán datos al repositorio.

## Decisiones de análisis y salvaguardas

### Bike Sharing · notebooks 03 y 04

- Cada fila corresponde a una hora; la respuesta es **cnt**, el total de alquileres.
- Excluir **casual** y **registered**: son componentes que suman el objetivo y provocarían fuga directa.
- Excluir **instant** como identificador y usar **dteday** para ordenar/particionar, no como predictor inicial.
- Dividir por fechas: entrenamiento en el periodo anterior, prueba en el bloque temporal posterior.
- Tratar los códigos de calendario como categorías cuando corresponda.
- Ajustar imputación, escalado y codificación sólo con entrenamiento, usando **ColumnTransformer** y **Pipeline**.
- Advertir que el clima observado históricamente no necesariamente estaría disponible al pronosticar; una aplicación operativa requeriría clima pronosticado.
- Informar MAE en unidades de bicicletas, RMSE para penalizar más errores grandes y R² como medida complementaria. Comparar con un baseline y no prometer transferencia a otros años o ciudades.

### Bank Marketing · notebooks 05 y 06

- Formular el escenario como priorización **antes** de llamar.
- Excluir **duration**: la duración sólo se conoce después de la llamada; usarla sería fuga y contestaría otra pregunta.
- Inspeccionar la prevalencia de **yes/no**; comparar con un baseline de clase mayoritaria.
- Tratar **pdays=999** según su significado documentado de “sin contacto previo”, no como 999 días ordinarios. Crear una bandera y representar el valor como ausente antes de imputar, explicando la decisión.
- Separar test antes de comparar o elegir umbral. Mantener el test final fuera de la validación cruzada y de la selección de umbral.
- Entrenar preprocesamiento dentro de pipelines; usar particiones estratificadas.
- Elegir un umbral con validación y una métrica explícita; reportar el test una sola vez. No presentar F1, ROC-AUC o una probabilidad como una decisión universal.
- Aclarar que asociación predictiva no estima el efecto causal de contactar a una persona. La evaluación de una estrategia de contacto requeriría un diseño experimental o causal y revisión de privacidad/equidad.

## Estructura didáctica común

Cada notebook seguirá el patrón establecido en DS Basics:

1. pregunta y contexto del caso;
2. objetivos de aprendizaje;
3. procedencia, licencia y unidad de observación;
4. carga reproducible de datos;
5. inspección y visualización con pregunta explícita;
6. concepto intuitivo antes del código;
7. preparación y baseline;
8. modelo y evaluación;
9. interpretación en unidades/contexto;
10. limitaciones, supuestos y errores frecuentes;
11. mini reto abierto;
12. fuentes, atribución y qué sigue.

Los resultados numéricos deben calcularse al ejecutar la notebook y explicarse, no fijarse en el texto como si fueran universales. Cada sección debe distinguir qué se implementa en el cuaderno y qué sería un siguiente paso.

## Organización dentro del repositorio

Las notebooks nuevas se añadirían a **03 Aprendizaje Máquina/notebooks/** para separar la ruta secuencial nueva de las dos notebooks históricas que hoy están en la raíz del módulo. Sus guías complementarias irían en **03 Aprendizaje Máquina/guias/**. Los módulos 01 y 02 no requieren cambios.

## Fuentes canónicas

- Fanaee-T, H. & Gama, J. (2013). *Event labeling combining ensemble detectors and background knowledge*. UCI Bike Sharing Dataset. [Ficha y licencia](https://archive.ics.uci.edu/dataset/275/bike+sharing+dataset), DOI **10.24432/C5W894**.
- Moro, S., Cortez, P. & Rita, P. (2014). *A Data-Driven Approach to Predict the Success of Bank Telemarketing*. UCI Bank Marketing. [Ficha y licencia](https://archive.ics.uci.edu/dataset/222/bank+marketing), DOI **10.24432/C5K306**.
- Scikit-learn: [Pipelines y composición](https://scikit-learn.org/stable/modules/compose.html), [errores comunes y fuga de datos](https://scikit-learn.org/stable/common_pitfalls.html), [validación cruzada](https://scikit-learn.org/stable/modules/cross_validation.html) y [métricas de clasificación](https://scikit-learn.org/stable/modules/model_evaluation.html#classification-metrics).
