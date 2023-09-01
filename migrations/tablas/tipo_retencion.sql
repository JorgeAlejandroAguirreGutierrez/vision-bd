CREATE TABLE tipo_retencion(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   impuestro_retencion varchar,
   tipo_retencion varchar,
   codigo_sri varchar,
   descripcion varchar,
   porcentaje double,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   PRIMARY KEY (id)
);