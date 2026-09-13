# 02 · Pensar con Python

> **En una frase:** pasar de guardar información a tomar decisiones, repetir tareas y encapsular lógica reutilizable.

📓 [Abrir notebook](../notebooks/02_Pensar_con_Python.ipynb)

## 🧭 Qué cubre la notebook

- comparaciones que producen `True` o `False`;
- condiciones con `if`, `elif` y `else`;
- operadores lógicos `and`, `or` y `not`;
- indentación y bloques de código;
- ciclos `for`;
- `range()` para controlar repeticiones;
- ciclos `while` y condiciones de salida;
- funciones, parámetros, valores por defecto y `return`;
- tuplas cuando queremos una secuencia estable;
- conjuntos (`set`) cuando nos importan valores únicos;
- una primera lectura de *list comprehensions* después de entender el `for` tradicional.

## 🧠 Idea central

```text
representar datos → aplicar reglas → repetir procesos → resumir resultados
```

Un programa no “piensa” como una persona. Evalúa condiciones y sigue rutas que nosotros definimos.

## 🌍 Conexiones aplicadas

- **Validación:** aceptar o rechazar registros según una regla.
- **Clasificación:** asignar etiquetas según umbrales.
- **Procesamiento:** aplicar una operación a muchas mediciones o transacciones.
- **Automatización:** repetir un proceso hasta que se cumpla una condición.
- **Reutilización:** convertir una transformación repetida en una función.

## ✅ Al terminar deberías poder

- construir una condición legible;
- entender por qué la indentación cambia el comportamiento del programa;
- elegir entre `for` y `while`;
- escribir funciones pequeñas con entradas y salidas claras;
- reconocer para qué sirven tuplas y conjuntos;
- seguir el flujo de un programa sin ejecutar mentalmente cada línea como una instrucción aislada.

## 🧪 Mini reto

Crea una función `resumir_ventas(ventas, umbral)` que reciba una lista y devuelva cuántas ventas son mayores o iguales al umbral. Después cambia el umbral y observa cómo cambia el resultado.

## 📚 Para consultar

- [Control de flujo en el tutorial oficial de Python](https://docs.python.org/es/3/tutorial/controlflow.html)
- [Estructuras de datos](https://docs.python.org/es/3/tutorial/datastructures.html)
- [Funciones incorporadas](https://docs.python.org/es/3/library/functions.html)

## 🔗 Sigue con

[03 · Código reutilizable](./03_Modulos_POO_Archivos.md)
