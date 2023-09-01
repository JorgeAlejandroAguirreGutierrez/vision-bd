CREATE TABLE tipo_contribuyente(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   tipo varchar,
   subtipo varchar,
   obligado_contabilidad varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   PRIMARY KEY (id)
);