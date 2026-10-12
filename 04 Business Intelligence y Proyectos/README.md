# Módulo 04 · Business Intelligence y proyectos integradores

> **Estado:** nueva ruta práctica, enfocada en decisiones. No presupone herramientas comerciales de pago.

## Dashboard publicado

[Probar el dashboard interactivo en Streamlit](https://dsbasics-dbshzxqrgyz64tknfthamr.streamlit.app/)

Explora los filtros por mercado, producto y segmento, compara indicadores y revisa la concentración de clientes. Los datos son sintéticos y se utilizan exclusivamente con fines de aprendizaje.

## Ruta de aprendizaje
1. [BI desde cero — preguntas, indicadores y dashboard](./notebooks/01_BI_desde_cero.ipynb): dataset del módulo 00, cálculo de métricas, visualización, validación y narrativa.
2. [Proyecto largo — segmentación comercial y escenarios](./notebooks/02_Proyecto_integrador.ipynb): ETL, calidad, cohortes sencillas, concentración comercial y sensibilidad de márgenes.
3. [Dashboard interactivo de Streamlit](./streamlit_app/app.py): filtros por país, producto y segmento, KPIs y gráficos. [Ver demostración en línea](https://dsbasics-dbshzxqrgyz64tknfthamr.streamlit.app/).
4. [Guía de un proyecto completo](./proyectos/caso_integrador.md): del problema de negocio a una recomendación auditada.

## Herramientas
- Python, pandas y Matplotlib en notebooks.
- Streamlit (opcional) para transformar la exploración en una app web local.
- PostgreSQL + SQL desde el módulo 00 para fuentes estructuradas; los ejemplos se ejecutan por defecto con CSV sintéticos.
- Excel para validar criterios de cálculo y compartir resultados. Los conocimientos son transferibles a Power BI y Metabase, pero **no es obligatorio instalarlos**.

## Ejecutar desde raíz del repositorio
```bash
python -m pip install -r "04 Business Intelligence y Proyectos/requirements.txt"
streamlit run "04 Business Intelligence y Proyectos/streamlit_app/app.py"
```

## Lo que NO debemos confundir
- Margen bruto calculado con costos variables **no es utilidad neta**.
- Los datos del ejercicio son sintéticos, no registros de un cliente real.
- Un dashboard comunica hallazgos, pero no prueba causalidad.
- BI debe responder una pregunta y motivar una decisión, no solo mostrar gráficos.

## Abrir notebooks en Colab

[BI desde cero](https://colab.research.google.com/github/mauriciorslrv/DS_basics/blob/main/04%20Business%20Intelligence%20y%20Proyectos/notebooks/01_BI_desde_cero.ipynb) · [Proyecto integrador](https://colab.research.google.com/github/mauriciorslrv/DS_basics/blob/main/04%20Business%20Intelligence%20y%20Proyectos/notebooks/02_Proyecto_integrador.ipynb)

La aplicación Streamlit puede ejecutarse localmente o [probarse en línea](https://dsbasics-dbshzxqrgyz64tknfthamr.streamlit.app/); en Colab se ejecutan las notebooks.
