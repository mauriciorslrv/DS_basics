# 🧠 Módulo 03 · Aprendizaje Máquina

> **Estado:** 🚧 **EN EXPANSIÓN**

Este módulo introduce aprendizaje máquina desde una idea deliberadamente simple: **el perceptrón**. El objetivo no es saltar directamente a modelos complejos, sino entender qué significa aprender una frontera de decisión, dónde falla un modelo lineal y por qué aparecen capas y activaciones no lineales.

## 📍 Contenido actual

### Parte I · Perceptrón
📓 `Introduccion_Perceptron.ipynb`

- neurona/perceptrón y combinación lineal;
- pesos, bias y función escalón;
- aprendizaje y ajuste de pesos;
- operadores AND y OR;
- XOR como límite de separabilidad lineal;
- clasificación binaria;
- ejemplo con **Iris setosa vs. versicolor** usando longitud de sépalo y pétalo;
- estandarización, train/test, accuracy y frontera de decisión;
- exploración de learning rate y semillas aleatorias.

➡️ [Guía resumida](./guias/01_Perceptron.md)

### Parte II · Del perceptrón a redes neuronales
📓 `Introduccion_Perceptron_P2.ipynb`

- limitaciones de la función escalón;
- función sigmoide;
- idea de representación gradual y derivabilidad;
- arquitectura entrada → capa oculta → salida;
- cómo una capa oculta permite construir representaciones intermedias;
- XOR como motivación conceptual para redes multicapa.

➡️ [Guía resumida](./guias/02_Del_Perceptron_a_Redes_Neuronales.md)

## 🗺️ Ruta de expansión

La siguiente etapa del módulo se irá construyendo con ejemplos prácticos y notebooks independientes. Los temas propuestos —**todavía no deben interpretarse como contenido ya implementado**— son:

1. preparación de datos y prevención de leakage;
2. regresión y clasificación con modelos clásicos;
3. métricas y evaluación más allá de accuracy;
4. árboles y métodos ensemble;
5. pipelines y preprocesamiento;
6. selección/reducción de características;
7. interpretabilidad;
8. proyectos end-to-end con datos reales;
9. profundización gradual en redes neuronales.

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

La intención es que cada algoritmo nuevo responda primero **qué problema resuelve y qué supuestos introduce**.

📚 [Índice de guías](./guias/README.md)
