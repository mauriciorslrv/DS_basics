# Continuación de ML con datos reales

> **Estado:** notebooks 03–06 implementadas en la rama de continuación.
>
> **Alcance:** cambios limitados al Módulo 03 · Aprendizaje Máquina. Las seis notebooks, incluidas las dos de perceptrón, están en [notebooks/](../notebooks/). Los módulos 01 y 02 no se modifican.

## Propósito

Completar un ciclo introductorio de aprendizaje supervisado con dos preguntas contextualizadas: estimar demanda horaria de bicicletas y priorizar contactos de una campaña bancaria. Los datasets se descargan de UCI al ejecutar; no se guardan copias ni se generan filas dummy.

## Secuencia implementada

| Notebook | Pregunta aplicada | Dataset | Enfoque |
|---|---|---|---|
| 03 · [Preparar datos](../notebooks/03_Preparar_Datos_para_ML.ipynb) | ¿Qué información estaría disponible antes de anticipar demanda? | [UCI Bike Sharing](https://archive.ics.uci.edu/dataset/275/bike+sharing+dataset), Capital Bikeshare, 2011–2012 | X/y, auditoría, fuga, partición temporal y pipeline. |
| 04 · [Regresión](../notebooks/04_Regresion_Demanda_Bicicletas.ipynb) | ¿Cómo estimar alquileres por hora y cuánto se equivoca el modelo? | Bike Sharing | Baseline, regresor, MAE/RMSE/R² y análisis de error. |
| 05 · [Clasificación](../notebooks/05_Clasificacion_Bank_Marketing.ipynb) | ¿Podemos priorizar contactos antes de llamar? | [UCI Bank Marketing](https://archive.ics.uci.edu/dataset/222/bank+marketing), campaña de un banco portugués | Etiquetas, clases desbalanceadas, regresión logística, probabilidades y umbral. |
| 06 · [Evaluación](../notebooks/06_Evaluacion_Modelos_Bank_Marketing.ipynb) | ¿Qué errores cometen distintos modelos y políticas? | Bank Marketing | Train/valid/test, validación cruzada, métricas y test reservado. |

## Decisiones y salvaguardas

### Bike Sharing · notebooks 03 y 04

- Cada fila representa una hora; **cnt** es el total de alquileres.
- **casual** y **registered** son componentes del objetivo y se excluyen para prevenir fuga directa.
- **instant** es identificador; **dteday** ordena los periodos y no se usa como predictor inicial.
- Los códigos de calendario se tratan como categorías.
- La prueba contiene el bloque temporal más reciente.
- Las transformaciones se aprenden dentro de pipelines con datos de entrenamiento.
- El clima observado puede no estar disponible antes de pronosticar; se explica qué cambiaría en un escenario operativo.

### Bank Marketing · notebooks 05 y 06

- La etiqueta indica si el contacto terminó en suscripción; la predicción no demuestra causalidad.
- **duration** se conoce después de la llamada y **campaign** resume contactos de la campaña; se excluyen al modelar antes del contacto.
- **pdays=999** significa sin contacto previo y se convierte en bandera más valor faltante.
- El desbalance obliga a complementar accuracy con métricas por clase.
- El umbral didáctico de Notebook 05 se explora, pero no debe seleccionarse usando el test. Notebook 06 muestra selección con validación y test final reservado.

Ambos datasets declaran licencia **CC BY 4.0**; cada notebook conserva fuente, atribución y DOI.

## Siguientes extensiones

La ruta puede seguir con árboles y ensembles, interpretación, validación temporal más avanzada y proyectos end-to-end, manteniendo el mismo estándar: contexto, decisiones explícitas, límites y retos verificables.
