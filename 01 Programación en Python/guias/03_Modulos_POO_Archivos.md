# 03 · Código reutilizable

> **En una frase:** aprender a separar responsabilidades para que el código sea más fácil de leer, reutilizar y depurar.

📓 [Abrir notebook](../notebooks/03_Codigo_reutilizable.ipynb)

## 🧭 Qué cubre la notebook

- transformar una operación repetida en una función clara;
- diferencia práctica entre **instalar** una librería e **importarla**;
- crear e importar un módulo propio `.py`;
- importar definiciones concretas y evitar `from modulo import *`;
- trabajar con rutas mediante `pathlib.Path`;
- escribir y leer archivos de texto;
- convertir texto leído desde un archivo en datos utilizables;
- interpretar errores como información para depurar;
- usar `try/except` para fallas esperables;
- comprender atributos, métodos, clases e instancias sin convertir POO en el centro del módulo;
- organizar un pequeño flujo en funciones con responsabilidades separadas.

## 🧠 Idea central

```text
problema grande
   ↓
responsabilidades pequeñas
   ↓
funciones / módulos / objetos cuando aportan claridad
```

La estructura no es un objetivo por sí misma. Sirve cuando reduce repetición, hace explícitas las responsabilidades o permite reutilizar lógica.

## 🌍 Conexiones aplicadas

- **Proyectos de datos:** separar carga, limpieza, transformación y análisis.
- **Automatización:** reutilizar funciones en varios scripts.
- **Archivos:** incorporar mediciones, configuraciones o resultados guardados.
- **Librerías:** entender expresiones como `df.head()` o `modelo.fit()` como llamadas a métodos de objetos.
- **Depuración:** responder de forma controlada a entradas inválidas o archivos con problemas esperables.

## ✅ Al terminar deberías poder

- reconocer cuándo una función mejora la claridad;
- crear e importar un módulo sencillo;
- distinguir instalar de importar;
- leer y escribir archivos de texto;
- usar `try/except` con intención y no para esconder errores;
- diferenciar atributo y método;
- leer una clase pequeña sin necesitar dominar toda la programación orientada a objetos.

## 🧪 Mini reto

Crea una clase `Sensor` con un nombre y una lista de mediciones. Añade un método que devuelva la medición máxima y prueba el objeto con varias observaciones.

## 📚 Para consultar

- [Módulos en Python](https://docs.python.org/es/3/tutorial/modules.html)
- [Errores y excepciones](https://docs.python.org/es/3/tutorial/errors.html)
- [Clases en Python](https://docs.python.org/es/3/tutorial/classes.html)
- [`pathlib`](https://docs.python.org/es/3/library/pathlib.html)

## 🔗 Sigue con

[04 · NumPy: pensar en arreglos](./04_NumPy.md)
