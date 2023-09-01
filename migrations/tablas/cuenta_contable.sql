CREATE TABLE cuenta_contable(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   cuenta varchar,
   descripcion varchar,
   clasificacion varchar,
   nivel bigint,
   fe varchar,
   casillero varchar,
   mapeo varchar,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   empresa_id bigint,
   PRIMARY KEY (id)
);