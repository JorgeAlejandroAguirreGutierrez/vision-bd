CREATE TABLE tarjeta_debito(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   fecha timestamp without time zone,
   tipo varchar,
   comprobante varchar,
   valor double,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   cuenta_propia_id bigint,
   factura_id bigint,
   PRIMARY KEY (id)
);