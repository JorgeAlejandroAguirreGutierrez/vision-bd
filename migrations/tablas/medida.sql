CREATE TABLE medida(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   tipo vsarchar,
   descripcion varchar,
   abreviatura varchar,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   empresa_id bigint,
   PRIMARY KEY (id)
);