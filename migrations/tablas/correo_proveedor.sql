CREATE TABLE correo_proveedor(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   email varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   proveedor_id bigint,
   PRIMARY KEY (id)
);