# 01 · Introducción a la programación con Python

> **En una frase:** aprender a representar información y aplicar operaciones básicas antes de construir análisis más complejos.

📓 [Abrir notebook](../notebooks/Introduccion_a_la_programacion_con_Python.ipynb)

## 🧭 Qué cubre la notebook

La notebook parte de la ejecución básica en Python y Jupyter (`print`, comentarios) y construye el vocabulario inicial del lenguaje:

- variables y `type()`;
- `int`, `float`, `bool`, `str` y números complejos;
- operadores aritméticos, de comparación, asignación y lógicos;
- listas: índices, slicing, actualización, `append`, `del`, pertenencia y copias;
- diccionarios: pares clave–valor, edición, eliminación y estructuras relacionadas.

## 🧩 Mapa mental

```text
dato → variable → tipo → operación → estructura → decisión
```

Una variable guarda un valor; el tipo determina qué operaciones tienen sentido; listas y diccionarios permiten organizar más de un valor de manera útil.

## 🌍 Conexiones aplicadas

> Estos ejemplos son conexiones pedagógicas, no casos adicionales implementados en la notebook.

- **Negocio:** `ventas_mes`, `margen`, `cliente_activo` son variables con tipos distintos.
- **Datos:** una lista puede representar un lote de mediciones o identificadores.
- **Sistemas:** un diccionario puede representar un cliente, producto o configuración: `{"id": 42, "segmento": "A", "activo": True}`.
- **Reglas:** operadores lógicos permiten expresar condiciones como “cliente activo **y** saldo mayor a cero”.

## ✅ Al terminar deberías poder

- distinguir los tipos básicos;
- elegir entre lista y diccionario para un problema sencillo;
- acceder y modificar elementos;
- combinar comparaciones con lógica booleana;
- leer expresiones básicas de Python sin tratarlas como magia.

## 🧪 Mini reto

Representa tres productos con nombre, precio y disponibilidad. Calcula el precio promedio y crea una condición que indique cuáles están disponibles y cuestan menos que un límite elegido por ti.

## 🔗 Sigue con

[02 · Bases para usar Python](./02_Bases_Python.md)
