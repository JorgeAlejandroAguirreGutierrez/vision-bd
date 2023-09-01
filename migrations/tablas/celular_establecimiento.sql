CREATE TABLE celular_establecimiento(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   numero varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   establecimiento_id bigint,
   PRIMARY KEY (id)
);