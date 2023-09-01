CREATE TABLE impuesto(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   codigo_sri varchar,
   descripcion varchar,
   abreviatura varchar,
   porcentaje double,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   PRIMARY KEY (id)
);