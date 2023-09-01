CREATE TABLE plazo_credito(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   descripcion 	varchar,
   abreviatura	varchar,
   plazo double,
   estado	varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   empresa_id bigint,
   PRIMARY KEY (id)
);