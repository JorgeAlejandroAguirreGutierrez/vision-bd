CREATE TABLE tipo_contribuyente(
   id       bigint GENERATED BY DEFAULT AS IDENTITY NOT NULL,
   codigo 	varchar,
   tipo varchar,
   subtipo varchar,
   obligado_contabilidad varchar,
   fecha_creacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP, 
   fecha_actualizacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP,
   PRIMARY KEY (id)
);