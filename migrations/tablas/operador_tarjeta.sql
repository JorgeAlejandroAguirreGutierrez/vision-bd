CREATE TABLE operador_tarjeta(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   tipo varchar,
   nombre varchar,
   abreviatura varchar,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   PRIMARY KEY (id)
);