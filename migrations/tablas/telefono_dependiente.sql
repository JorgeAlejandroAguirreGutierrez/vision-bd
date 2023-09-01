CREATE TABLE telefono_dependiente(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   numero varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   dependiente_id bigint,
   PRIMARY KEY (id)
);