# 🧠 Módulo 03 · Aprendizaje Máquina

> **Estado:** 🚧 **EN EXPANSIÓN**

Este módulo introduce aprendizaje máquina desde una idea deliberadamente simple: **el perceptrón**. El objetivo no es saltar directamente a modelos complejos, sino entender qué significa aprender una frontera de decisión, dónde falla un modelo lineal y por qué aparecen capas y activaciones no lineales. La siguiente etapa conecta esos conceptos con datos públicos del mundo real y un ciclo supervisado reproducible.

## 📍 Contenido implementado

### Parte I · Perceptrón
📓 [Introducción al perceptrón](./Introduccion_Perceptron.ipynb)

- neurona/perceptrón y combinación lineal;
- pesos, bias y función escalón;
- aprendizaje y ajuste de pesos;
- operadores AND y OR;
- XOR como límite de separabilidad lineal;
- clasificación binaria;
- ejemplo con Iris setosa vs. versicolor usando longitud de sépalo y pétalo;
- estandarización, train/test, accuracy y frontera de decisión;
- exploración de learning rate y semillas aleatorias.

➡️ [Guía resumida](./guias/01_Perceptron.md)

### Parte II · Del perceptrón a redes neuronales
📓 [Del perceptrón a redes neuronales](./Introduccion_Perceptron_P2.ipynb)

- limitaciones de la función escalón;
- función sigmoide;
- idea de representación gradual y derivabilidad;
- arquitectura entrada → capa oculta → salida;
- cómo una capa oculta permite construir representaciones intermedias;
- XOR como motivación conceptual para redes multicapa.

➡️ [Guía resumida](./guias/02_Del_Perceptron_a_Redes_Neuronales.md)

## 🌍 Continuación propuesta · ML con datos reales

La continuación se organiza como un primer ciclo supervisado con datasets públicos, preguntas contextualizadas y resultados calculados al ejecutar. La propuesta está documentada; las notebooks nuevas se incorporarán por etapas y se marcarán como implementadas sólo cuando existan.

1. **03 · Preparar datos para ML** — UCI Bike Sharing: definir X/y, inspeccionar datos, evitar fuga de información y hacer una partición cronológica.
2. **04 · Regresión: demanda de bicicletas** — el mismo dataset: comparar baseline y regresor; interpretar MAE, RMSE, R² y residuos.
3. **05 · Clasificación: Bank Marketing** — campaña bancaria portuguesa: predecir suscripción con datos disponibles antes de llamar, sin usar la duración de la llamada.
4. **06 · Evaluar modelos de clasificación** — comparación con validación, clases desbalanceadas, precision/recall, umbral y conjunto test reservado.

Bike Sharing y Bank Marketing son datasets reales de UCI con licencia CC BY 4.0. Se incluirán las fuentes, atribución y DOI. Los archivos de datos no se guardarán en el repositorio; se obtendrán explícitamente desde UCI al ejecutar las notebooks.

➡️ [Plan detallado, dataset, decisiones y salvaguardas](./guias/03_Continuacion_ML_con_datos_reales.md)

## 🗺️ Después de este primer ciclo

Una vez completas las cuatro notebooks, el módulo podrá ampliarse con árboles de decisión y ensembles, aprendizaje no supervisado, selección de características e interpretabilidad, y proyectos end-to-end. Son etapas futuras y no deben confundirse con contenido ya implementado.

## 🎯 Principio del módulo

```text
modelo simple
    ↓
entender qué aprende
    ↓
entender dónde falla
    ↓
añadir complejidad sólo cuando resuelve una limitación real
```

Cada algoritmo debe responder primero **qué problema resuelve y qué supuestos introduce**. Los datos reales sirven para practicar decisiones y límites, no para presentar un modelo como una solución automática o causal.

📚 [Índice de guías](./guias/README.md)
