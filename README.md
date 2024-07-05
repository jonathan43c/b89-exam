# Examen B89 - Data engineer jr.

## Estructura del Repositorio

El repositorio contiene dos ramas:
- `definiciones`: Contiene el archivo para crear las tablas y el diagrama ER que fue realizado en Pgadmin 4.
- `operaciones`: Contiene el store procedures y 2 vistas.

## Preguntas Conceptuales

### 1. Gráficos y Filtros para el Dashboard

#### Vista: Remesas No Procesadas
- **Gráfico**: Gráfico de barras horizontal
  - **Descripción**: Cantidad de remesas denegadas o pendientes por comerciante en el ultimo mes.
  - **Filtros**: 
    - Fecha: Filtrar por dia, mes y año
    - Comerciante: Filtrar por algún comerciante en especifico.

#### Vista: Top 10 Beneficiarios
- **Gráfico**: Gráfico de barras vertical
  - **Descripción**: los 10 beneficiarios que recibieron más remesas en el último mes.
  - **Filtros**: 
    - Fecha: Filtrar por dia, mes y año
    - Beneficiario: Filtrar por algún beneficiario en especifico.
    - Comerciante: Filtrar por algún comerciante en especifico.

