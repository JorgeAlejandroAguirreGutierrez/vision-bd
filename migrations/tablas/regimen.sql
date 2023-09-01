CREATE TABLE regimen(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   descripcion varchar,
   abreviatura varchar,
   visible varchar,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   PRIMARY KEY (id)
);