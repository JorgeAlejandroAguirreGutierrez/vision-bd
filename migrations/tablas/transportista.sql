CREATE TABLE transportista(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   nombre varchar,
   identificacion varchar,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   tipo_identificacion_id bigint,
   empresa_id bigint,
   PRIMARY KEY (id)
);