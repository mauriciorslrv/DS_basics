# 01 · Introducción al perceptrón

> **En una frase:** aprender cómo una neurona artificial sencilla separa dos clases mediante una frontera lineal —y descubrir dónde deja de funcionar.

📓 [Abrir notebook](../notebooks/Introduccion_Perceptron.ipynb)

## 🧭 Qué cubre la notebook

La notebook presenta el perceptrón de Rosenblatt (1957) como uno de los primeros modelos neuronales entrenables. Construye la idea desde entradas (x), pesos (w), bias (b), la combinación (z = w^T x + b), una función escalón y la regla de actualización a partir del error.

## 🧪 De AND a XOR

Los operadores lógicos son ejercicios controlados para entender geometría y aprendizaje:

- **AND:** se puede separar con una recta; permite seguir manualmente cada actualización.
- **OR:** repite el proceso con otra frontera lineal.
- **XOR:** no puede separarse con una sola recta; muestra un límite del modelo.

La tabla lógica es un ejemplo construido para la enseñanza, no un conjunto de datos externo. Se usa porque podemos enumerar todos los casos y verificar a mano cada predicción.

## 🌸 Caso Iris: de dónde vienen los datos y por qué esas columnas

Iris es un conjunto clásico de mediciones de flores publicado por Ronald A. Fisher en 1936 y disponible en scikit-learn. Cada fila corresponde a una flor; sus cuatro atributos son longitud y ancho de sépalo y pétalo, y la etiqueta identifica la especie.

La notebook compara **setosa** y **versicolor**. Para dibujar una frontera en dos dimensiones, el primer experimento toma la longitud del sépalo y la longitud del pétalo: cada punto se puede ubicar en un plano. La elección ayuda a visualizar, no afirma que esas variables sean siempre las más predictivas. En otra parte se trabaja con las cuatro mediciones para contrastar el resultado. Estandarizamos las variables porque sus escalas originales difieren y eso puede influir en el aprendizaje basado en pesos.

## 🧠 Qué observar

La accuracy resume aciertos en una partición concreta; no explica qué clase se confunde ni garantiza rendimiento fuera de esa muestra. La frontera visual ayuda a ver qué combinaciones separa el modelo y dónde falla.

## 🌍 Conexión aplicada

Una frontera binaria puede representar preguntas de clasificación cuando hay señal y las clases pueden separarse aproximadamente de forma lineal. En un proyecto real revisaríamos calidad de datos, balance, costo de error, representatividad y desempeño en datos futuros.

## 🧪 Mini reto

Ejecuta Iris con distintas semillas y tasas de aprendizaje. Registra qué cambia. Luego prueba otra pareja de variables y explica qué se gana y pierde al usar sólo dos columnas. ¿Por qué una sola accuracy no describe por completo la estabilidad?

## 🔗 Sigue con

[02 · Del perceptrón a redes neuronales](./02_Del_Perceptron_a_Redes_Neuronales.md)
