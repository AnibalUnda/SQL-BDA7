# SQL-BDA7
## Autores:
## Chavez Cajigas, Jhenss Malkyn
## Unda Tejada, Anibal Junior
### Caso Propuesto: Gestión de Indicadores Diarios en Sistema Finanicero
Se necesita implementar un sistema para registrar, analizar y reportar indicadores diarios de riesgo que permitan a los gerentes de distintas agencias monitorear el desempeño de calidad de cartera de la institución en tiempo real. Además, de tambien medir la calidad de de cartera por los analistas (tanto del analista que originó el crédito - analista origenn - y el analista al que se le asignó la cartera - analista actual-) que son responables de los créditos.

### Objetivo del sistema
Registrar indicadores por Agencia
Registrar indicadores por analista de la cartera
Registrar indicadores por analista origen (que colocó el crédito) de la cartera
Detectar desviaciones respecto a la meta de los indicadores

### Entidades
En el diseño lógico y físico se puede conocer las variables de cada tabla mencionada:
##### Agencia
##### Gerente de Agencia
##### Fecha
##### Indicador
##### Sistema Fuente
##### Créditos
##### Analista Responsable
##### Desviación Indicador

Respecto al Script de la creación de la base de datos en SQL, se encuentra en la carpeta DATA BASE
## Diagrama Entidad Relación
![E_R](https://github.com/user-attachments/assets/dc05d7ee-86f2-4b0c-bb32-6162f4c15e2e)

## Diseño Lógico
![image](https://github.com/user-attachments/assets/2abaec96-b7f5-45c9-9596-e1825d1e9d37)

## Diseño Físico
![image](https://github.com/user-attachments/assets/8d17dca0-129b-45dd-aaf7-7a60e1181276)

## Tarea 3

Como parte de la tarea 3 se agregó el script con la inserción de datos con 16 registros en las tablas independientes y transaccionales.
