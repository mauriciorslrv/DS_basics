# 🧠 Módulo 03 · Aprendizaje Máquina

> **Estado:** 🚧 **EN EXPANSIÓN**

El módulo parte del perceptrón para entender fronteras de decisión y conecta esos conceptos con aprendizaje supervisado y datos públicos del mundo real. Las seis notebooks ejecutables están reunidas en [notebooks/](./notebooks/); las guías de lectura están en [guias/](./guias/).

## Ruta de aprendizaje

| # | Notebook | Qué trabajamos |
|---|---|---|
| 01 | [Introducción al perceptrón](./notebooks/Introduccion_Perceptron.ipynb) | Pesos, bias, frontera lineal, AND/OR/XOR e Iris. [Guía](./guias/01_Perceptron.md) |
| 02 | [Del perceptrón a redes neuronales](./notebooks/Introduccion_Perceptron_P2.ipynb) | Sigmoide, experimentos con Iris, límites lineales y conexión conceptual con redes. [Guía](./guias/02_Del_Perceptron_a_Redes_Neuronales.md) |
| 03 | [Preparar datos para ML](./notebooks/03_Preparar_Datos_para_ML.ipynb) | UCI Bike Sharing: X/y, inspección, fuga de información, partición cronológica y pipelines. [Guía](./guias/03_Preparar_Datos_para_ML.md) |
| 04 | [Regresión: demanda de bicicletas](./notebooks/04_Regresion_Demanda_Bicicletas.ipynb) | Baseline, regresión, MAE/RMSE/R² y análisis de errores con Bike Sharing. [Guía](./guias/04_Regresion_Demanda_Bicicletas.md) |
| 05 | [Clasificación: Bank Marketing](./notebooks/05_Clasificacion_Bank_Marketing.ipynb) | Campañas bancarias: clasificación sí/no, probabilidades y umbrales. [Guía](./guias/05_Clasificacion_Bank_Marketing.md) |
| 06 | [Evaluación de modelos](./notebooks/06_Evaluacion_Modelos_Bank_Marketing.ipynb) | Validación, clases desbalanceadas, métricas, comparación de modelos y test reservado. [Guía](./guias/06_Evaluacion_Modelos_Bank_Marketing.md) |

## Fuentes y decisiones importantes

- [UCI Bike Sharing](https://archive.ics.uci.edu/dataset/275/bike+sharing+dataset), CC BY 4.0, DOI 10.24432/C5W894. Se excluyen **casual** y **registered**, componentes que revelan **cnt**; la fecha ordena la partición y el identificador no aporta una señal generalizable.
- [UCI Bank Marketing](https://archive.ics.uci.edu/dataset/222/bank+marketing), CC BY 4.0, DOI 10.24432/C5K306. Se excluyen **duration** (se conoce al terminar la llamada) y **campaign** (resumen de contactos realizados durante la campaña), porque el escenario pregunta a quién contactar antes de llamar.
- Iris se carga desde scikit-learn y se usa para estudiar separabilidad; las variables visibles se eligen según el experimento y se explican en las notebooks.
- Los datos públicos se descargan al ejecutar; no se incluyen copias locales ni filas ficticias. Las predicciones no se presentan como evidencia causal.

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

Cada algoritmo responde primero qué problema resuelve y qué supuestos introduce. Los resultados numéricos se calculan al ejecutar, se interpretan en contexto y no se presentan como universales.

📚 [Índice de guías](./guias/README.md)
