# 01 · Introducción al perceptrón

> **En una frase:** aprender cómo una neurona artificial sencilla separa dos clases mediante una frontera lineal —y descubrir exactamente dónde deja de funcionar.

📓 [Abrir notebook](../Introduccion_Perceptron.ipynb)

## 🧭 Qué cubre la notebook

La notebook presenta el perceptrón de Rosenblatt (1957) como uno de los primeros modelos neuronales entrenables. Construye la idea desde:

- entradas `x`;
- pesos `w`;
- bias `b`;
- combinación lineal `z = wᵀx + b`;
- función escalón para producir una clase 0/1;
- regla de aprendizaje y ajuste de parámetros.

## 🧪 De AND a XOR

Los operadores lógicos sirven para ver la geometría del problema:

- **AND:** separable linealmente;
- **OR:** ejercicio para repetir el proceso;
- **XOR:** muestra el límite importante: una sola recta no puede separar correctamente las clases.

```text
perceptrón simple = frontera lineal
XOR               = patrón no separable por una sola frontera lineal
```

Ese fracaso no es un detalle: es la razón pedagógica para avanzar hacia modelos con más capacidad.

## 🌸 Caso Iris

La notebook lleva la idea a una clasificación binaria con **Iris setosa y versicolor**, usando longitud de sépalo y longitud de pétalo. Incluye estandarización, separación train/test, entrenamiento de un perceptrón, accuracy y visualización de frontera de decisión. También invita a experimentar con semillas y learning rate.

## 🌍 Conexión aplicada

Una frontera binaria similar puede representar preguntas del tipo “clase A o B”, siempre que las variables contengan señal suficiente y la geometría sea compatible. En un proyecto real habría que revisar además calidad de datos, balance de clases, métricas y costo de error.

## 🧪 Mini reto

Ejecuta el caso Iris con distintas semillas y learning rates. Registra qué cambia y qué permanece estable. Después explica por qué una sola accuracy no describe por completo la robustez de un experimento.

## 🔗 Sigue con

[02 · Del perceptrón a redes neuronales](./02_Del_Perceptron_a_Redes_Neuronales.md)
