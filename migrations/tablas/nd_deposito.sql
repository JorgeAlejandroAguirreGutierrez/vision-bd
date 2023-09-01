CREATE TABLE nd_credito(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   fecha timestamp without time zone,
   comprobante varchar,
   valor double,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   banco_id bigint,
   cuenta_propia bigint,
   nota_debito_id bigint,
   PRIMARY KEY (id)
);