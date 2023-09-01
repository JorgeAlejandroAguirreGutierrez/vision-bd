CREATE TABLE nd_transferencia(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   fecha timestamp without time zone,
   tipo varchar,
   comprobante varchar,
   valor double,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   cuenta_propia_id bigint,
   nota_debito_id bigint,
   PRIMARY KEY (id)
);