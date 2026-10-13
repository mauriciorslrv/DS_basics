# PostgreSQL local · guía para comenzar en Windows

Esta guía acompaña la [ruta SQL desde cero](./README_SQL_DESDE_CERO.md). Puedes hacer la notebook de SQL básico sin servidor, pero aquí experimentarás con PostgreSQL y pgAdmin en tu computadora.

## 1. ¿Qué necesitas?

- **PostgreSQL:** motor que almacena tablas, ejecuta SQL y aplica reglas de integridad.
- **pgAdmin:** interfaz gráfica para administrar PostgreSQL y escribir consultas.
- **Una base de práctica:** un espacio aislado para experimentar sin afectar datos reales.

Descarga PostgreSQL desde [la página oficial](https://www.postgresql.org/download/windows/). El instalador de Windows normalmente permite incluir pgAdmin. Los menús pueden variar según la versión.

## 2. Instalación inicial

1. Ejecuta el instalador de PostgreSQL para Windows.
2. Incluye **PostgreSQL Server** y **pgAdmin**. Los demás componentes son opcionales para comenzar.
3. Define una contraseña para el usuario administrador `postgres` y guárdala de forma segura.
4. Mantén el puerto predeterminado `5432` salvo que esté ocupado.
5. Finaliza la instalación y abre **pgAdmin**.

Si no puedes conectar, revisa que el servicio de PostgreSQL esté iniciado y que host (`localhost`), puerto, usuario y contraseña coincidan con lo configurado.

## 3. Crear tu base de práctica

1. Dentro de pgAdmin conecta el servidor PostgreSQL local.
2. Haz clic derecho en **Databases → Create → Database**.
3. Escribe `ds_basics_practica`, guarda y selecciona la nueva base.
4. Abre **Query Tool** desde esa base.

En este punto tienes un espacio vacío y seguro para aprender.

## 4. Cargar las primeras tablas

Abre `sql/00_introduccion/00_datos_de_practica.sql` en GitHub, copia su contenido dentro de Query Tool y ejecútalo. Ese archivo crea el esquema `practica_sql`, las tablas `clientes`, `productos` y `ventas`, y algunas filas sintéticas.

> Importante: el script **elimina y vuelve a crear sus tablas de práctica**. Úsalo solo en `ds_basics_practica`, nunca en una base real.

Comprueba que funcionó con:

```sql
SELECT * FROM practica_sql.clientes;
SELECT * FROM practica_sql.productos;
SELECT * FROM practica_sql.ventas;
```

Deberías observar cinco clientes, tres productos y siete ventas ficticias.

## 5. Primeras preguntas

```sql
-- ¿Qué clientes viven en México?
SELECT nombre, pais
FROM practica_sql.clientes
WHERE pais = 'MX';

-- ¿Cuántas ventas tenemos?
SELECT COUNT(*) AS numero_ventas
FROM practica_sql.ventas;

-- ¿Qué productos existen y cuánto cuestan?
SELECT nombre, precio
FROM practica_sql.productos
ORDER BY precio DESC;
```

Ejecuta **una consulta a la vez**, explica el resultado con tus palabras y cambia un filtro para observar qué sucede.

## 6. Orden de los archivos

`01_seleccionar.sql` → `02_filtrar.sql` → `03_ordenar_y_agrupar.sql` → `04_relaciones_join.sql` → `06_ejercicios.sql` → `07_soluciones.sql`.

Deja `05_modificar_datos.sql` para cuando comprendas cómo funcionan los cambios de información y las transacciones. Se recomienda usar `ROLLBACK` en ejercicios que modifican registros.

## 7. ¿Y si quiero utilizar psql?

En el terminal psql conectado a tu base puedes utilizar:

```sql
SELECT current_database(), current_user;
\dt practica_sql.*
```

El comando `\dt` es propio de **psql**, no de SQL estándar. Para ejecutar scripts desde psql utiliza `\i 'RUTA_DEL_ARCHIVO.sql'` con una ruta local real.

## 8. Del ejemplo pequeño al proyecto

Cuando logres seleccionar, filtrar, ordenar, contar y unir las tablas pequeñas, abre `sql/01_modelo_y_datos_postgresql.sql` para construir el caso ficticio de 72 ventas y ejecuta `sql/02_consultas_y_retos.sql`.

**Aún no necesitas CTE ni funciones de ventana** para completar la primera semana de práctica. Llegarán después de dominar `SELECT`, `WHERE`, `GROUP BY` y `JOIN`.

### Si algo falla

- **password authentication failed:** revisa contraseña y usuario.
- **connection refused:** el servicio no está activo o puerto/host incorrectos.
- **relation does not exist:** confirma la base, el esquema y que el script de carga se ejecutó.
- **permission denied:** usa una base creada por tu usuario de prueba o revisa permisos.
- **syntax error:** ejecuta una sentencia completa con punto y coma, no un fragmento.

