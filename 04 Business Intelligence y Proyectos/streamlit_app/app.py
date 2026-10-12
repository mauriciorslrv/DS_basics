"""Dashboard educativo AELITYX - 04 BI. Ejecutar con: streamlit run app.py desde cualquier directorio."""
from pathlib import Path
import pandas as pd
import streamlit as st

ROOT=Path(__file__).resolve().parents[2]
DATA=ROOT / '00 Fundamentos de Datos - Excel y SQL' / 'datos'
@st.cache_data
def leer():
    ventas=pd.read_csv(DATA/'ventas.csv',parse_dates=['fecha'])
    clientes=pd.read_csv(DATA/'clientes.csv')
    productos=pd.read_csv(DATA/'productos.csv')
    df=ventas.merge(clientes,on='cliente_id',validate='many_to_one').merge(productos,on='producto_id',validate='many_to_one')
    df['ingreso']=df.unidades*df.precio_unitario
    df['costo_variable']=df.unidades*df.costo_unitario
    df['margen_bruto']=df.ingreso-df.costo_variable
    return df
st.set_page_config(page_title='AELITYX | BI aplicado',layout='wide')
st.title('AELITYX · BI aplicado')
st.caption('Ejercicio educativo | datos sintéticos | el margen bruto excluye gastos fijos, fletes y aranceles')
df=leer()
paises=st.sidebar.multiselect('Mercados',sorted(df.pais.unique()),default=sorted(df.pais.unique()))
productos=st.sidebar.multiselect('Productos',sorted(df.producto.unique()),default=sorted(df.producto.unique()))
segmentos=st.sidebar.multiselect('Segmentos',sorted(df.segmento.unique()),default=sorted(df.segmento.unique()))
df=df[df.pais.isin(paises)&df.producto.isin(productos)&df.segmento.isin(segmentos)]
if df.empty:
    st.warning('La combinación de filtros no contiene ventas.');st.stop()
a,b,c,d=st.columns(4)
ingreso=df.ingreso.sum();margen=df.margen_bruto.sum()
a.metric('Ingresos',f'{ingreso:,.0f}')
b.metric('Margen bruto',f'{margen:,.0f}')
c.metric('Margen bruto (%)',f'{100*margen/ingreso:.1f}%' if ingreso else 'N/D')
d.metric('Clientes únicos',df.cliente_id.nunique())
izq,der=st.columns(2)
with izq:
    st.subheader('Ingreso por país')
    st.bar_chart(df.groupby('pais').ingreso.sum())
with der:
    st.subheader('Margen por producto')
    st.bar_chart(df.groupby('producto').margen_bruto.sum())
st.subheader('Evolución mensual')
st.line_chart(df.set_index('fecha').resample('MS').ingreso.sum())
st.subheader('Concentración comercial')
clientes=df.groupby('cliente',as_index=False).agg(ingreso=('ingreso','sum'),margen=('margen_bruto','sum')).sort_values('ingreso',ascending=False)
st.dataframe(clientes,use_container_width=True)
st.download_button('Exportar resumen CSV',clientes.to_csv(index=False).encode('utf-8'),file_name='resumen_clientes.csv',mime='text/csv')
st.info('Pregunta de decisión: ¿qué cliente o segmento priorizarías y qué información adicional pedirías antes de actuar?')
