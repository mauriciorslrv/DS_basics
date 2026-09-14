# 06 · Obtener datos desde web y APIs

> **En una frase:** un análisis muchas veces empieza obteniendo, validando y estructurando la información.

📓 [Abrir notebook](../notebooks/06_Web_Scraping_y_APIs.ipynb)

## Papel dentro del módulo

Esta notebook queda explícitamente como **puente práctico de adquisición de datos**, no como núcleo de estadística.

## Qué cubre

- HTML y scraping;
- selectores CSS con Beautiful Soup;
- validación del parser con HTML controlado;
- peticiones HTTP con `requests`;
- **scraping multipágina de Books to Scrape**;
- construcción y validación de un DataFrame;
- gráficas de distribución y agregados;
- una regla de decisión reproducible;
- APIs y JSON;
- **Open-Meteo** como ejemplo completo de endpoint → parámetros → JSON → DataFrame → gráfica → decisión;
- ética, términos de servicio y rate limits.

## Ejercicio principal

```text
web
 ↓
HTML
 ↓
extraer título / precio / rating / stock
 ↓
DataFrame
 ↓
validar
 ↓
graficar
 ↓
regla explícita de decisión
```

El sitio usado es un sandbox educativo. Sus precios y ratings son ficticios, por lo que la conclusión válida es metodológica, no comercial.

## API como interfaz pública

Una API puede entenderse como un contrato documentado que expone endpoints y parámetros para que otros programas pidan datos u operaciones permitidas. La notebook usa Open-Meteo para mostrar el recorrido completo desde una petición HTTP hasta una decisión didáctica.

## Material adicional

- [Open-Meteo · Forecast API](https://open-meteo.com/en/docs)
- [Requests Quickstart](https://requests.readthedocs.io/en/latest/user/quickstart/)
- [Beautiful Soup documentation](https://beautiful-soup-4.readthedocs.io/en/latest/)
- [MDN HTTP](https://developer.mozilla.org/en-US/docs/Web/HTTP)
- [Books to Scrape](https://books.toscrape.com/)

## Términos clave

**HTTP · status code · endpoint · parámetro · HTML · selector CSS · parser · paginación · JSON · API · rate limit · robots.txt**

## Continúa

Después del módulo, sigue [03 · Aprendizaje Máquina](../../03%20Aprendizaje%20Máquina/README.md).
