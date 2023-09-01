CREATE TABLE afectacion_contable(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   descripcion 	varchar,
   abreviatura 	varchar,
   estado	varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   PRIMARY KEY (id)
);