# 🧠 Módulo 03 · Aprendizaje Máquina

> **Estado:** 🚧 **EN EXPANSIÓN**

El módulo parte del perceptrón para entender fronteras de decisión y luego conecta sus conceptos con aprendizaje supervisado y datos públicos del mundo real.

## Contenido implementado

### Parte I · Perceptrón
📓 [Introducción al perceptrón](./Introduccion_Perceptron.ipynb)

- combinación lineal, pesos, bias y función escalón;
- aprendizaje con operadores AND y OR;
- XOR como límite de separabilidad lineal;
- clasificación de Iris setosa vs. versicolor;
- estandarización, train/test, accuracy, frontera de decisión y semillas.

➡️ [Guía del perceptrón](./guias/01_Perceptron.md)

### Parte II · Del perceptrón a redes neuronales
📓 [Del perceptrón a redes neuronales](./Introduccion_Perceptron_P2.ipynb)

- limitaciones de la función escalón;
- sigmoide y representación gradual;
- capa oculta y representaciones intermedias;
- XOR como motivación conceptual para redes multicapa.

➡️ [Guía de redes neuronales](./guias/02_Del_Perceptron_a_Redes_Neuronales.md)

## Continuación · ML con datos reales

Estas cuatro notebooks completan un ciclo supervisado inicial. Los datos se descargan de UCI al ejecutar; no se incluyen copias locales ni ejemplos de filas dummy.

| Notebook | Enfoque y datos |
|---|---|
| 03 · [Preparar datos para ML](./notebooks/03_Preparar_Datos_para_ML.ipynb) | UCI Bike Sharing: X/y, inspección, leakage, partición cronológica y pipelines. [Guía](./guias/03_Preparar_Datos_para_ML.md) |
| 04 · [Regresión: demanda de bicicletas](./notebooks/04_Regresion_Demanda_Bicicletas.ipynb) | El mismo dataset: baseline, regresión, MAE/RMSE/R² y análisis de errores. [Guía](./guias/04_Regresion_Demanda_Bicicletas.md) |
| 05 · [Clasificación: Bank Marketing](./notebooks/05_Clasificacion_Bank_Marketing.ipynb) | Campañas telefónicas bancarias: clasificación sí/no, probabilidades y umbrales. [Guía](./guias/05_Clasificacion_Bank_Marketing.md) |
| 06 · [Evaluación de modelos](./notebooks/06_Evaluacion_Modelos_Bank_Marketing.ipynb) | Validación, clases desbalanceadas, métricas, comparación de modelos y test reservado. [Guía](./guias/06_Evaluacion_Modelos_Bank_Marketing.md) |

### Fuentes y decisiones importantes

- [UCI Bike Sharing](https://archive.ics.uci.edu/dataset/275/bike+sharing+dataset), CC BY 4.0, DOI 10.24432/C5W894. Se excluyen **casual** y **registered**, componentes que revelan el objetivo **cnt**.
- [UCI Bank Marketing](https://archive.ics.uci.edu/dataset/222/bank+marketing), CC BY 4.0, DOI 10.24432/C5K306. Se excluye **duration** porque sólo se conoce tras la llamada.
- Cada notebook conserva atribución, fuente y limitaciones. Los ejemplos predictivos no se presentan como evidencia causal.

## Después de este primer ciclo

La siguiente expansión podrá incluir árboles y ensembles más profundos, aprendizaje no supervisado, interpretabilidad y proyectos end-to-end. Se incorporarán cuando exista material didáctico y evaluable.

## Principio del módulo

```text
modelo simple
    ↓
entender qué aprende
    ↓
entender dónde falla
    ↓
añadir complejidad cuando resuelve una limitación real
```

Cada algoritmo responde primero qué problema resuelve y qué supuestos introduce. Los resultados numéricos se calculan al ejecutar; se interpretan en contexto y no se presentan como universales.

📚 [Índice de guías](./guias/README.md)
