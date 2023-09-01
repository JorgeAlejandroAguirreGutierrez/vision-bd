CREATE TABLE vehiculo(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   placa varchar,
   numero varchar,
   marca varchar,
   modelo varchar,
   anio varchar,
   cilindraje varchar,
   clase varchar,
   color varchar,
   fabricacion varchar,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   empresa_id bigint,
   PRIMARY KEY (id)
);