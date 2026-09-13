# 02 · Del perceptrón a las redes neuronales

> **En una frase:** introducir no linealidad y capas ocultas para resolver patrones que una sola frontera lineal no puede representar.

📓 [Abrir notebook](../Introduccion_Perceptron_P2.ipynb)

## 🧭 Punto de partida

La notebook retoma la limitación del perceptrón y pregunta: **¿por qué una sola neurona no es suficiente?**

La función escalón produce una decisión abrupta y no ofrece una transición gradual. La notebook introduce la **sigmoide**:

`σ(z) = 1 / (1 + e⁻ᶻ)`

con valores entre 0 y 1 y una forma diferenciable.

## 🧠 El salto conceptual

Después aparece una arquitectura multicapa:

```text
ENTRADAS
   ↓
CAPA OCULTA
   ↓
SALIDA
```

La idea central es que las neuronas ocultas pueden aprender representaciones intermedias y que la salida combina esas representaciones. XOR vuelve a ser útil: aquello que no podía resolverse con una sola frontera puede motivar una composición de fronteras y transformaciones.

## 🌍 Qué representa esto fuera del ejemplo

La importancia no es “usar una red porque es más avanzada”. Es entender que **más capacidad permite modelar relaciones no lineales**, pero también introduce más parámetros, decisiones de arquitectura y riesgo de sobreajuste.

Esta última reflexión es una conexión pedagógica para la expansión del módulo; la notebook actual se concentra en construir la transición conceptual.

## ✅ Al terminar deberías poder explicar

- por qué la función escalón limita ciertos procesos de aprendizaje;
- qué aporta una activación sigmoide;
- qué papel juega una capa oculta;
- por qué XOR es una demostración tan útil;
- por qué aumentar complejidad debe responder a una limitación observable.

## 🧪 Mini reto

Dibuja una red con 2 entradas, 2 neuronas ocultas y 1 salida. Sin calcular pesos todavía, describe qué información podría aprender cada neurona oculta para ayudar a resolver XOR.

## 🚀 Próxima evolución

Las siguientes notebooks del módulo podrán conectar esta base con evaluación de modelos, algoritmos clásicos, pipelines y proyectos completos. Esos temas están en el roadmap, **no se presentan aquí como contenido ya implementado**.
