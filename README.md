# ente_crud
API de gestión general de entidades (personas y organizaciones)

Integración con

 - `CI`
 - `AWS Lambda - S3`
 - `Drone 1.x`
 - `ente_crud master/develop`

## Requerimientos
Go version >= 1.8.

## Preparación
Para usar el API, usar el comando:

 - `go get github.com/udistrital/ente_crud`

## Ejecución
Definir los valores de las siguientes variables de entorno:

 - `ENTE_HTTP_PORT`: Puerto asignado para la ejecución del API
 - `ENTE_CRUD__PGUSER`: Usuario de la base de datos
 - `ENTE_CRUD__PGPASS`: Clave del usuario para la conexión a la base de datos  
 - `ENTE_CRUD__PGURLS`: Host de conexión
 - `ENTE_CRUD__PGDB`: Nombre de la base de datos
 - `ENTE_CRUD__SCHEMA`: Esquema a utilizar en la base de datos

## Ejemplo
ENTE_HTTP_PORT=8096 ENTE_CRUD__PGUSER=user ENTE_CRUD__PGPASS=password ENTE_CRUD__PGURLS=localhost ENTE_CRUD__PGDB=bd ENTE_CRUD__SCHEMA=schema_new bee run

## Modelo BD
![image](https://github.com/udistrital/ente_crud/blob/develop/modelo_ente_crud.png).
