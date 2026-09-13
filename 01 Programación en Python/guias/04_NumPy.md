# 04 · NumPy

> **En una frase:** trabajar con arreglos numéricos de manera compacta y vectorizada.

📓 [Abrir notebook](../notebooks/Numpy.ipynb)

## 🧭 Qué cubre la notebook

- creación de arreglos 1D y 2D con `np.array`;
- tipos numéricos y `dtype`;
- dimensiones, `shape` y tamaño;
- indexación, slicing y modificación;
- suma y multiplicación vectorizada;
- producto punto;
- `np.linspace`;
- funciones como media, máximo, `pi` y `sin`;
- construcción de una onda seno y visualización con Matplotlib.

## 🔑 Por qué importa

En ciencia de datos muchas operaciones no se hacen elemento por elemento con ciclos explícitos. NumPy permite pensar en **vectores y matrices**:

```text
muchos valores + una operación
           ↓
       vectorización
           ↓
 código más compacto y base del ecosistema científico
```

## 🌍 Conexiones aplicadas

- series de mediciones de sensores;
- vectores de características para Machine Learning;
- matrices de simulación;
- señales y series temporales;
- cálculos repetidos sobre miles de observaciones.

## ✅ Al terminar deberías poder

- interpretar `shape` y dimensiones;
- seleccionar partes de un arreglo;
- ejecutar operaciones vectorizadas;
- reconocer cuándo NumPy es una base más adecuada que una lista común.

## 🧪 Mini reto

Genera 365 valores simulados de una medición diaria. Calcula media, máximo y una transformación vectorizada. Después grafica la serie para identificar cambios visibles.

## 🔗 Sigue con

[05 · Pandas](./05_Pandas.md)
