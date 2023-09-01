CREATE TABLE perfil(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   descripcion varchar,
   abreviatura varchar,
   estado varchar,
   multiempresa varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   PRIMARY KEY (id)
);