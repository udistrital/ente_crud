# ente_crud
documentacion
--Api de personas con CI--
CI deploy with lambda - S3
Drone 0.8 
ente_crud master/develop

## Requirements
Go version >= 1.8.

## Preparación:
    Para usar el API, usar el comando:
        - go get github.com/udistrital/ente_crud

## Run

Definir los valores de las siguientes variables de entorno:

 - `API_ENTE_HTTP_PORT`: Puerto asignado para la ejecución del API
 - `ENTE_CRUD__PGUSER`: Usuario de la base de datos
 - `ENTE_CRUD__PGPASS`: Clave del usuario para la conexión a la base de datos  
 - `ENTE_CRUD__PGURLS`: Host de conexión
 - `ENTE_CRUD__PGDB`: Nombre de la base de datos
 - `ENTE_CRUD__SCHEMA`: Esquema a utilizar en la base de datos

Ejemplo: API_ENTE_HTTP_PORT=8083 ENTE_CRUD__PGUSER=user ENTE_CRUD__PGPASS=password ENTE_CRUD__PGURLS=localhost ENTE_CRUD__PGDB=udistrital_core_db ENTE_CRUD__SCHEMA=core_new bee run

## MODELO
