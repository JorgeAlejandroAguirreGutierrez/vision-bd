CREATE TABLE retencion_cliente(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   tipo_retencion_id bigint,
   cliente_id bigint,
   PRIMARY KEY (id)
);