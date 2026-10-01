# 02 · Del perceptrón a las redes neuronales

> **En una frase:** introducir activaciones suaves y capas ocultas para comprender cómo se amplía la capacidad de un modelo.

📓 [Abrir notebook](../notebooks/Introduccion_Perceptron_P2.ipynb)

## 🧭 Punto de partida

La notebook retoma Iris y las tablas lógicas de la Parte 1. Pregunta: **¿qué cambia al modificar la función de activación, la cantidad de características y la implementación?**

Iris contiene mediciones de flores —longitud y ancho de sépalo y pétalo— junto con la especie. El experimento de dos características usa una pareja concreta para poder dibujar la frontera; los de cuatro características usan toda la medición disponible para comparar su efecto. Setosa frente a versicolor funciona como contraste relativamente sencillo, mientras versicolor frente a virginica tiene más solapamiento y permite observar errores. La selección de variables está ligada a cada pregunta visual/comparativa, no es una regla universal.

XOR vuelve a aparecer como una tabla lógica construida con cuatro combinaciones. Se conserva porque exhibe con claridad que una frontera lineal no basta.

## 🧠 El salto conceptual

La función escalón produce una decisión abrupta. La sigmoide

`σ(z) = 1 / (1 + e⁻ᶻ)`

produce valores entre 0 y 1 y es diferenciable, lo que permite estudiar actualizaciones basadas en gradientes. Una capa oculta introduce representaciones intermedias; este contenido sirve como transición conceptual y no equivale a entrenar una red profunda en producción.

## 🔬 Cómo leer los experimentos

Las corridas con distintas semillas ayudan a separar una observación estable de un resultado que depende de una partición o inicialización concreta. La comparación con scikit-learn contrasta una implementación didáctica con una API mantenida y más robusta. Revisa qué cambió entre experimentos antes de atribuir una diferencia al algoritmo.

## 🌍 Qué representa esto fuera del ejemplo

Más capacidad puede representar relaciones no lineales, pero aumenta parámetros y decisiones y puede sobreajustar. Conviene añadir complejidad cuando una limitación observable del modelo simple lo justifica.

## ✅ Al terminar deberías poder explicar

- por qué la función escalón limita ciertos métodos de aprendizaje;
- qué aporta una activación diferenciable;
- qué cambia al usar dos o cuatro características;
- por qué una clase con más solapamiento produce más errores;
- por qué XOR motiva, pero no por sí solo valida, una red multicapa.

## 🧪 Mini reto

Elige un par distinto de especies y compara una corrida con dos variables frente a cuatro. Registra el mismo protocolo y explica por qué cambió la dificultad. Para XOR, dibuja dos neuronas ocultas y describe qué regiones podrían separar.

## 🚀 Qué sigue

Las notebooks 03–06 continúan con preparación de datos, regresión, clasificación y evaluación en datasets públicos reales.
