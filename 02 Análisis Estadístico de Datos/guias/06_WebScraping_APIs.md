# 06 · Web Scraping y APIs

> **En una frase:** un análisis empieza antes del análisis: muchas veces primero necesitamos obtener la información.

📓 [Abrir notebook](../notebooks/6_WebScrapping.ipynb)

## 🧭 Qué cubre la notebook

La notebook introduce:

- qué es web scraping;
- flujo básico: petición HTTP → HTML → extracción → almacenamiento/procesamiento;
- consideraciones legales y éticas: términos de servicio, copyright, datos personales y evitar sobrecargar sitios;
- qué es una API y cómo permite comunicación entre sistemas;
- conexión desde Python usando `requests`;
- `requests.get(url)` y revisión del código de estado (por ejemplo, 200);
- procesamiento de respuestas JSON mediante `response.json()`.

## 🧠 Dos caminos para obtener datos

```text
WEB                              API
página HTML                      interfaz estructurada
   ↓                                  ↓
petición → parseo → extracción    petición → JSON/XML → procesamiento
```

La elección depende de la fuente, permisos y disponibilidad de una interfaz adecuada.

## 🌍 Conexiones aplicadas

- datos públicos para investigación;
- catálogos o precios cuando su uso esté permitido;
- integración con servicios externos;
- construcción periódica de datasets;
- automatización de fuentes de información.

### Buena práctica sugerida

Cuando exista una API oficial adecuada, suele ser una opción más estable y explícita que extraer información de HTML. Ésta es una recomendación de diseño para proyectos futuros, no una regla universal ni una afirmación adicional de la notebook.

## 🧪 Mini reto

Conecta una API pública sencilla. Guarda tres campos de la respuesta JSON en un DataFrame y documenta: URL, fecha de consulta, significado de cada campo y cualquier restricción de uso que encuentres.

## 🔗 Continúa

Ya puedes obtener, organizar y analizar datos. Sigue con [03 · Aprendizaje Máquina](../../03%20Aprendizaje%20Máquina/README.md).
