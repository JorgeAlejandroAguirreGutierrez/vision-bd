CREATE TABLE tipo_comprobante(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   codigo_sri varchar,
   descripcion varchar,
   abreviatura varchar,
   nombre_tabla varchar,
   electronica varchar,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   PRIMARY KEY (id)
);