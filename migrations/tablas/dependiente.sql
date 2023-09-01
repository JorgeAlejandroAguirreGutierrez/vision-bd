CREATE TABLE cuenta_propia(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   tipo_cuenta	varchar,
   nombre 	varchar,
   numero	varchar,
   estado	varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   PRIMARY KEY (id)
);