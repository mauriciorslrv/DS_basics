# 04 · NumPy: pensar en arreglos

> **En una frase:** pasar de operar valor por valor a trabajar con colecciones numéricas completas de manera vectorizada y reproducible.

📓 [Abrir notebook](../notebooks/04_NumPy_pensar_en_arreglos.ipynb)

## 🧭 Qué cubre la notebook

- crear arreglos con `np.array`;
- diferencias prácticas entre listas y arreglos;
- `shape`, `ndim`, `size` y `dtype`;
- creación con `zeros`, `ones`, `arange` y `linspace`;
- indexación y slicing en una y dos dimensiones;
- operaciones vectorizadas;
- una primera intuición de *broadcasting*;
- agregaciones como media, mínimo, máximo y desviación estándar;
- máscaras booleanas para filtrar;
- `reshape` para reorganizar datos;
- generación aleatoria con `default_rng`;
- semillas y reproducibilidad;
- primer contacto con simulación mediante muchos escenarios posibles.

## 🧠 Idea central

```text
muchos valores + una operación
           ↓
       vectorización
           ↓
expresión compacta + cómputo numérico reproducible
```

NumPy permite pensar en **arreglos completos**, no sólo en operaciones repetidas elemento por elemento.

## 🌍 Conexiones aplicadas

- matrices de simulación;
- series de mediciones;
- imágenes representadas como arreglos;
- vectores de características para modelos;
- operaciones numéricas sobre miles o millones de observaciones;
- escenarios aleatorios para estudiar incertidumbre.

## ✅ Al terminar deberías poder

- leer la forma de un arreglo y entender sus dimensiones;
- seleccionar filas, columnas o segmentos;
- operar sobre un arreglo sin escribir un ciclo explícito;
- filtrar con máscaras booleanas;
- reorganizar datos con `reshape`;
- generar números aleatorios reproducibles;
- entender por qué NumPy prepara el terreno para simulación y ciencia de datos.

## 🧪 Mini reto

Genera 500 observaciones aleatorias con media 50 y desviación estándar 8. Calcula promedio, mínimo, máximo y cuántas observaciones superan 60.

## 📚 Para consultar

- [NumPy — guía para principiantes](https://numpy.org/doc/stable/user/absolute_beginners.html)
- [Creación de arreglos](https://numpy.org/doc/stable/user/basics.creation.html)
- [Indexación](https://numpy.org/doc/stable/user/basics.indexing.html)
- [Generación de números aleatorios](https://numpy.org/doc/stable/reference/random/index.html)

## 🔗 Sigue con

[05 · Pandas: trabajar con datos](./05_Pandas.md)
