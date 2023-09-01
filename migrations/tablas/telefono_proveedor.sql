CREATE TABLE tipo_contribuyente(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   numero varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   proveedor_id bigint,
   PRIMARY KEY (id)
);