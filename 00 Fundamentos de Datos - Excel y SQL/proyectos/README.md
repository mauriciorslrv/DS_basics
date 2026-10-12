# Proyecto largo · Comercializadora ficticia de hierbas aromáticas

## Contexto
Una empresa simulada vende cuatro productos a seis clientes en México, Estados Unidos y Canadá. Requieres entender rentabilidad, concentración de clientes, riesgo por mercado y variación de insumos. **No utilices estos datos para afirmar resultados del negocio real de 2020.**

## Fase 1 · Calidad (Excel)
Importar tres CSV, comprobar duplicados, llaves, rangos, fechas y celdas vacías. Crear hoja `calidad` y documentar cada corrección con antes/después.

## Fase 2 · Modelo relacional (PostgreSQL)
Ejecutar `sql/01_modelo_y_datos_postgresql.sql`, trazar diagrama entidad relación con `clientes 1:N ventas N:1 productos`. Verificar que existan 72 ventas y comparar totales con Excel.

## Fase 3 · Análisis
Responder: ¿qué país aporta mayor margen bruto? ¿Qué clientes concentran ingresos? ¿Qué productos resistirían un aumento de costo? ¿Qué clientes requieren seguimiento? Hacer JOIN, GROUP BY, CTE, ranking de ventanas y análisis de escenarios.

## Fase 4 · Decisión y comunicación
Producir un memo de una página, dashboard y recomendaciones, con límites: no conocemos fletes reales, aranceles ni costos fijos, por lo que **margen bruto no equivale a utilidad neta**. Distinguir correlación de causalidad.

## Entregables y evaluación (100 puntos)
- Calidad y reproducibilidad: 25
- SQL y consistencia de cálculos: 25
- Análisis crítico de supuestos y sesgos: 25
- Visualización, historia y acciones: 25

**Extensión:** incorporar una tabla `costos_logisticos` de ejemplo para calcular margen de contribución por país, sin presentarlo como dato real.
