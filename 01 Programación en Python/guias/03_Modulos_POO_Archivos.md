# 03 · Módulos, Programación Orientada a Objetos y archivos

> **En una frase:** organizar código para reutilizarlo y representar entidades con comportamiento propio.

📓 [Abrir notebook](../notebooks/Modulos_y_Programacion_Orientada_a_Objetos.ipynb)

## 🧭 Qué cubre la notebook

La notebook conecta varias ideas que aparecen cuando un script empieza a crecer:

- módulos incluidos y módulos propios;
- ejemplos con `random` y `math`;
- importaciones, alias y consulta de ayuda/documentación;
- clases, objetos e instancias;
- variables de clase e instancia, `__init__` y métodos;
- ejemplos como `Circle` y `Rectangle`;
- herencia;
- operaciones con conjuntos: unión, intersección, subconjuntos, diferencia y diferencia simétrica;
- lectura y escritura de archivos con `open` y `with open(...)`;
- ejemplo posterior de lectura de PDF mediante PyPDF2.

## 🌍 Conexiones aplicadas

- **Módulos:** separar limpieza, visualización y utilidades en archivos reutilizables.
- **Objetos:** representar clientes, productos, experimentos o modelos con atributos y métodos.
- **Herencia:** crear variantes especializadas sin duplicar toda la lógica común.
- **Conjuntos:** cruzar segmentos, permisos o grupos de registros.
- **Archivos:** incorporar reportes, logs o documentos a un flujo de datos.

## 💡 Señal de madurez

Si copias la misma función en tres notebooks, probablemente ya vale la pena convertirla en un módulo. Si varias entidades comparten atributos y comportamiento, quizá una clase ayude. Ninguna herramienta debe usarse sólo “porque existe”: la estructura debe simplificar el problema.

## 🧪 Mini reto

Crea una clase `Producto` con nombre, precio y categoría. Añade un método para aplicar un descuento. Después guarda un pequeño resumen de varios productos en un archivo de texto.

## 🔗 Sigue con

[04 · NumPy](./04_NumPy.md)
