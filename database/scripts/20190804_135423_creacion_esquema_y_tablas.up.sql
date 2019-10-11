-- object: ente | type: SCHEMA --
-- DROP SCHEMA IF EXISTS ente CASCADE;
CREATE SCHEMA ente;
-- ddl-end --

SET search_path TO pg_catalog,public,ente;
-- ddl-end --

-- object: ente.atributo_ubicacion | type: TABLE --
-- DROP TABLE IF EXISTS ente.atributo_ubicacion CASCADE;
CREATE TABLE ente.atributo_ubicacion (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_atributo_ubicacion PRIMARY KEY (id),
	CONSTRAINT uq_nombre_atributo_ubicacion UNIQUE (nombre)

);
-- ddl-end --
COMMENT ON TABLE ente.atributo_ubicacion IS 'Tabla que almacena los atributos que puede tener una ubicación';
-- ddl-end --
COMMENT ON COLUMN ente.atributo_ubicacion.id IS 'Identificador único de la tabla';
-- ddl-end --
COMMENT ON COLUMN ente.atributo_ubicacion.nombre IS 'Campo que indica el nombre del parámetro.';
-- ddl-end --
COMMENT ON COLUMN ente.atributo_ubicacion.descripcion IS 'Descripción opcional del parámetro.';
-- ddl-end --
COMMENT ON COLUMN ente.atributo_ubicacion.codigo_abreviacion IS 'Código de abreviación, sigla, acrónimo u otra representación corta del registro si se requiere';
-- ddl-end --
COMMENT ON COLUMN ente.atributo_ubicacion.activo IS 'Campo de tipo boolean que indica si el parámetro está activo';
-- ddl-end --
COMMENT ON COLUMN ente.atributo_ubicacion.numero_orden IS ' En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD.';
-- ddl-end --
COMMENT ON COLUMN ente.atributo_ubicacion.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN ente.atributo_ubicacion.fecha_modificacion IS 'Fecha de la última modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_atributo_ubicacion ON ente.atributo_ubicacion  IS 'Llave primaria de la tabla';
-- ddl-end --
COMMENT ON CONSTRAINT uq_nombre_atributo_ubicacion ON ente.atributo_ubicacion  IS 'Constraint unique para que el nombre de atributo_ubicacion no se repita.';
-- ddl-end --

-- object: ente.contacto_ente | type: TABLE --
-- DROP TABLE IF EXISTS ente.contacto_ente CASCADE;
CREATE TABLE ente.contacto_ente (
	id serial NOT NULL,
	tipo_contacto_id integer,
	ente_id integer NOT NULL,
	valor character varying(200) NOT NULL,
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_contacto_ente PRIMARY KEY (id),
	CONSTRAINT uq_contacto_ente UNIQUE (tipo_contacto_id,ente_id,valor)

);
-- ddl-end --
COMMENT ON TABLE ente.contacto_ente IS 'Tabla en la que se almacenan los contactos de los entes';
-- ddl-end --
COMMENT ON COLUMN ente.contacto_ente.id IS 'Identificador de la tabla contacto_ente';
-- ddl-end --
COMMENT ON COLUMN ente.contacto_ente.tipo_contacto_id IS 'identificador de la tabla tipo_contacto';
-- ddl-end --
COMMENT ON COLUMN ente.contacto_ente.ente_id IS 'identificador de la tabla ente';
-- ddl-end --
COMMENT ON COLUMN ente.contacto_ente.valor IS 'Almacena el valor de cada tipo de contacto por ejemplo el numero, email, fax, viper, red social etc.';
-- ddl-end --
COMMENT ON COLUMN ente.contacto_ente.activo IS 'Indica el estado del registro';
-- ddl-end --
COMMENT ON COLUMN ente.contacto_ente.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN ente.contacto_ente.fecha_modificacion IS 'Fecha de la última modificación del registro';
-- ddl-end --

-- object: ente.ente | type: TABLE --
-- DROP TABLE IF EXISTS ente.ente CASCADE;
CREATE TABLE ente.ente (
	id serial NOT NULL,
	tipo_ente_id integer NOT NULL,
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_ente PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE ente.ente IS 'tabla que generaliza los entes como personas, organizaciones, etc.';
-- ddl-end --
COMMENT ON COLUMN ente.ente.id IS 'Identificador primario de la tabla';
-- ddl-end --
COMMENT ON COLUMN ente.ente.tipo_ente_id IS 'Referencia foranea a la tabla tipo_ente';
-- ddl-end --
COMMENT ON COLUMN ente.ente.activo IS 'Indica el estado del registro';
-- ddl-end --
COMMENT ON COLUMN ente.ente.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN ente.ente.fecha_modificacion IS 'Fecha de la última modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_ente ON ente.ente  IS 'Restriccion de llave primaria.';
-- ddl-end --

-- object: ente.identificacion | type: TABLE --
-- DROP TABLE IF EXISTS ente.identificacion CASCADE;
CREATE TABLE ente.identificacion (
	id serial NOT NULL,
	ente_id integer NOT NULL,
	tipo_identificacion_id integer,
	numero_identificacion character varying(50) NOT NULL,
	fecha_expedicion date,
	lugar_expedicion integer,
	soporte integer,
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_identificacion PRIMARY KEY (id),
	CONSTRAINT uq_numero_identificacion UNIQUE (tipo_identificacion_id,numero_identificacion)

);
-- ddl-end --
COMMENT ON TABLE ente.identificacion IS 'almacena la informacion de identificación de un ente';
-- ddl-end --
COMMENT ON COLUMN ente.identificacion.id IS 'Identificador de la tabla identificacion';
-- ddl-end --
COMMENT ON COLUMN ente.identificacion.ente_id IS 'indentificador de la tabla ente';
-- ddl-end --
COMMENT ON COLUMN ente.identificacion.tipo_identificacion_id IS 'Identificador de la tabla tipo_identificacion.';
-- ddl-end --
COMMENT ON COLUMN ente.identificacion.numero_identificacion IS 'Número de documento de identificacion de un ente';
-- ddl-end --
COMMENT ON COLUMN ente.identificacion.fecha_expedicion IS 'Fecha de expedición del documento.';
-- ddl-end --
COMMENT ON COLUMN ente.identificacion.lugar_expedicion IS 'lugar en el cual se expide el documento de identificacion';
-- ddl-end --
COMMENT ON COLUMN ente.identificacion.soporte IS 'Referencia a la tabla documento del core_new';
-- ddl-end --
COMMENT ON COLUMN ente.identificacion.activo IS 'Indica el estado del registro';
-- ddl-end --
COMMENT ON COLUMN ente.identificacion.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN ente.identificacion.fecha_modificacion IS 'Fecha de la última modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_identificacion ON ente.identificacion  IS 'Restricción de llave primaria de la tabla';
-- ddl-end --
COMMENT ON CONSTRAINT uq_numero_identificacion ON ente.identificacion  IS 'Restricción para no repetir la identificacion entre entes';
-- ddl-end --

-- object: ente.tipo_ente | type: TABLE --
-- DROP TABLE IF EXISTS ente.tipo_ente CASCADE;
CREATE TABLE ente.tipo_ente (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_tipo_ente PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE ente.tipo_ente IS 'Almacena los tipos de ente relacionados al sistema, parsona u organizacion, ..';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_ente.id IS 'identificador unico de la tabla tipo_ente';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_ente.nombre IS 'Campo que indica el nombre del tipo de ente';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_ente.descripcion IS 'Descripción opcional del parámetro.';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_ente.codigo_abreviacion IS 'Código de abreviación, sigla, acrónimo u otra representación corta del registro si se requiere';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_ente.activo IS 'Campo de tipo boolean que inidica si el parametro esta activo';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_ente.numero_orden IS ' En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_ente.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_ente.fecha_modificacion IS 'Fecha de la última modificación del registro';
-- ddl-end --

-- object: ente.tipo_identificacion | type: TABLE --
-- DROP TABLE IF EXISTS ente.tipo_identificacion CASCADE;
CREATE TABLE ente.tipo_identificacion (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_tipo_identificacion PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE ente.tipo_identificacion IS 'tabla que almacena los tipos de identificación con los que cuentan los entes';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_identificacion.id IS 'identificador de la tabla tipo_identificacion';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_identificacion.nombre IS 'campo en el que se indica el nombre del tipo de identificación';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_identificacion.descripcion IS 'Descripción opcional del parámetro.';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_identificacion.codigo_abreviacion IS 'Código de abreviación, sigla, acrónimo u otra representación corta del registro si se requiere';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_identificacion.activo IS 'Campo de tipo boolean que inidica si el parametro esta activo';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_identificacion.numero_orden IS ' En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_identificacion.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_identificacion.fecha_modificacion IS 'Fecha de la última modificación del registro';
-- ddl-end --

-- object: ente.tipo_relacion_ubicacion_ente | type: TABLE --
-- DROP TABLE IF EXISTS ente.tipo_relacion_ubicacion_ente CASCADE;
CREATE TABLE ente.tipo_relacion_ubicacion_ente (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_tipo_relacion_ubicacion_ente PRIMARY KEY (id),
	CONSTRAINT uq_nombre_tipo_relacion_ubicacion_ente UNIQUE (nombre)

);
-- ddl-end --
COMMENT ON TABLE ente.tipo_relacion_ubicacion_ente IS 'Almacena los tipos relacion ubicacion (ej: lugar de nacimiento, lugar de residencia, lugar de trabajo)';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_relacion_ubicacion_ente.id IS 'Identificador de la tabla tipo_relacion_ubicacion_ente';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_relacion_ubicacion_ente.nombre IS 'Campo obligatorio de la tabla que indica el nombre del parámetro de tipo relacion ubicacion ente';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_relacion_ubicacion_ente.descripcion IS 'Descripción opcional del parámetro';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_relacion_ubicacion_ente.codigo_abreviacion IS 'Código de abreviación, sigla, acrónimo u otra representación corta del registro si se requiere';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_relacion_ubicacion_ente.activo IS 'Campo de tipo boolean que indica si el parámetro está activo';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_relacion_ubicacion_ente.numero_orden IS ' En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_relacion_ubicacion_ente.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_relacion_ubicacion_ente.fecha_modificacion IS 'Fecha de la última modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_tipo_relacion_ubicacion_ente ON ente.tipo_relacion_ubicacion_ente  IS 'Llave primaria de la tabla tipo_relacion_ubicacion_ente';
-- ddl-end --
COMMENT ON CONSTRAINT uq_nombre_tipo_relacion_ubicacion_ente ON ente.tipo_relacion_ubicacion_ente  IS 'Constraint unique para que el nombre del tipo_relacion_ubicacion_ente no se repita';
-- ddl-end --

-- object: ente.ubicacion_ente | type: TABLE --
-- DROP TABLE IF EXISTS ente.ubicacion_ente CASCADE;
CREATE TABLE ente.ubicacion_ente (
	id serial NOT NULL,
	lugar integer NOT NULL,
	ente_id integer NOT NULL,
	tipo_relacion_ubicacion_ente_id integer NOT NULL,
	activo boolean NOT NULL DEFAULT true,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_ubicacion_ente PRIMARY KEY (id),
	CONSTRAINT uq_ubicacion_ente UNIQUE (lugar,tipo_relacion_ubicacion_ente_id,ente_id)

);
-- ddl-end --
COMMENT ON TABLE ente.ubicacion_ente IS 'Tabla que almacena las direcciones y lugares asociados a una persona';
-- ddl-end --
COMMENT ON COLUMN ente.ubicacion_ente.id IS 'identificador de la tabla ubicacion_ente';
-- ddl-end --
COMMENT ON COLUMN ente.ubicacion_ente.lugar IS 'Identificador de la tabla lugar';
-- ddl-end --
COMMENT ON COLUMN ente.ubicacion_ente.activo IS 'Campo que permite saber si la ubicacion de un ente se encuentra vigente';
-- ddl-end --
COMMENT ON COLUMN ente.ubicacion_ente.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN ente.ubicacion_ente.fecha_modificacion IS 'Fecha de la última modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT uq_ubicacion_ente ON ente.ubicacion_ente  IS 'Restricción unique para los campos de lugar_ubicacion, ente y tipo_relacion de la tabla ubicacion_ente.';
-- ddl-end --

-- object: ente.valor_atributo_ubicacion | type: TABLE --
-- DROP TABLE IF EXISTS ente.valor_atributo_ubicacion CASCADE;
CREATE TABLE ente.valor_atributo_ubicacion (
	id serial NOT NULL,
	ubicacion_ente_id integer NOT NULL,
	atributo_ubicacion_id integer NOT NULL,
	valor character varying(150) NOT NULL,
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_valor_atributo_ubicacion PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE ente.valor_atributo_ubicacion IS 'Tabla que almacena el valor de los atributos que tiene una ubicación';
-- ddl-end --
COMMENT ON COLUMN ente.valor_atributo_ubicacion.id IS 'Identificador de la tabla valor_atributo_ubicacion';
-- ddl-end --
COMMENT ON COLUMN ente.valor_atributo_ubicacion.valor IS 'Valor para el atributo de la ubicación';
-- ddl-end --
COMMENT ON COLUMN ente.valor_atributo_ubicacion.activo IS 'Indica el estado del registro';
-- ddl-end --
COMMENT ON COLUMN ente.valor_atributo_ubicacion.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN ente.valor_atributo_ubicacion.fecha_modificacion IS 'Fecha de la última modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_valor_atributo_ubicacion ON ente.valor_atributo_ubicacion  IS 'Llave primaria de la tabla';
-- ddl-end --

-- object: ente.tipo_contacto | type: TABLE --
-- DROP TABLE IF EXISTS ente.tipo_contacto CASCADE;
CREATE TABLE ente.tipo_contacto (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_tipo_contacto PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE ente.tipo_contacto IS 'Almacena los tipos de contacto para cada ente';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_contacto.id IS 'identificador de la tabla tipo_contacto';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_contacto.nombre IS 'Campo obligatorio de la tabla que indica el nombre del parametro.';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_contacto.descripcion IS 'Descripción opcional del parámetro.';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_contacto.codigo_abreviacion IS 'Código de abreviación, sigla, acrónimo u otra representación corta del registro si se requiere';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_contacto.activo IS 'Campo de tipo boolean que inidica si el parametro esta activo';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_contacto.numero_orden IS ' En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_contacto.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN ente.tipo_contacto.fecha_modificacion IS 'Fecha de la última modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_tipo_contacto ON ente.tipo_contacto  IS 'Constraint de la llave primaria';
-- ddl-end --

-- object: fk_contacto_ente_ente | type: CONSTRAINT --
-- ALTER TABLE ente.contacto_ente DROP CONSTRAINT IF EXISTS fk_contacto_ente_ente CASCADE;
ALTER TABLE ente.contacto_ente ADD CONSTRAINT fk_contacto_ente_ente FOREIGN KEY (ente_id)
REFERENCES ente.ente (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_contacto_ente_tipo_contacto | type: CONSTRAINT --
-- ALTER TABLE ente.contacto_ente DROP CONSTRAINT IF EXISTS fk_contacto_ente_tipo_contacto CASCADE;
ALTER TABLE ente.contacto_ente ADD CONSTRAINT fk_contacto_ente_tipo_contacto FOREIGN KEY (tipo_contacto_id)
REFERENCES ente.tipo_contacto (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_ente_tipo_ente | type: CONSTRAINT --
-- ALTER TABLE ente.ente DROP CONSTRAINT IF EXISTS fk_ente_tipo_ente CASCADE;
ALTER TABLE ente.ente ADD CONSTRAINT fk_ente_tipo_ente FOREIGN KEY (tipo_ente_id)
REFERENCES ente.tipo_ente (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_identificacion_ente | type: CONSTRAINT --
-- ALTER TABLE ente.identificacion DROP CONSTRAINT IF EXISTS fk_identificacion_ente CASCADE;
ALTER TABLE ente.identificacion ADD CONSTRAINT fk_identificacion_ente FOREIGN KEY (ente_id)
REFERENCES ente.ente (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_identificacion_tipo_identificacion | type: CONSTRAINT --
-- ALTER TABLE ente.identificacion DROP CONSTRAINT IF EXISTS fk_identificacion_tipo_identificacion CASCADE;
ALTER TABLE ente.identificacion ADD CONSTRAINT fk_identificacion_tipo_identificacion FOREIGN KEY (tipo_identificacion_id)
REFERENCES ente.tipo_identificacion (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_ubicacion_ente_ente | type: CONSTRAINT --
-- ALTER TABLE ente.ubicacion_ente DROP CONSTRAINT IF EXISTS fk_ubicacion_ente_ente CASCADE;
ALTER TABLE ente.ubicacion_ente ADD CONSTRAINT fk_ubicacion_ente_ente FOREIGN KEY (ente_id)
REFERENCES ente.ente (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_ubicacion_ente_tipo_relacion_ubicacion_ente | type: CONSTRAINT --
-- ALTER TABLE ente.ubicacion_ente DROP CONSTRAINT IF EXISTS fk_ubicacion_ente_tipo_relacion_ubicacion_ente CASCADE;
ALTER TABLE ente.ubicacion_ente ADD CONSTRAINT fk_ubicacion_ente_tipo_relacion_ubicacion_ente FOREIGN KEY (tipo_relacion_ubicacion_ente_id)
REFERENCES ente.tipo_relacion_ubicacion_ente (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_valor_atributo_ubicacion_atributo_ubicacion | type: CONSTRAINT --
-- ALTER TABLE ente.valor_atributo_ubicacion DROP CONSTRAINT IF EXISTS fk_valor_atributo_ubicacion_atributo_ubicacion CASCADE;
ALTER TABLE ente.valor_atributo_ubicacion ADD CONSTRAINT fk_valor_atributo_ubicacion_atributo_ubicacion FOREIGN KEY (atributo_ubicacion_id)
REFERENCES ente.atributo_ubicacion (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_valor_atributo_ubicacion_ubicacion_ente | type: CONSTRAINT --
-- ALTER TABLE ente.valor_atributo_ubicacion DROP CONSTRAINT IF EXISTS fk_valor_atributo_ubicacion_ubicacion_ente CASCADE;
ALTER TABLE ente.valor_atributo_ubicacion ADD CONSTRAINT fk_valor_atributo_ubicacion_ubicacion_ente FOREIGN KEY (ubicacion_ente_id)
REFERENCES ente.ubicacion_ente (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --