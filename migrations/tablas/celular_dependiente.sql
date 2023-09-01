CREATE TABLE celular_dependiente(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   numero	varchar,
   dependiente_id 	bigint,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   PRIMARY KEY (id)
);