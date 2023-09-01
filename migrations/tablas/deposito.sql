CREATE TABLE deposito(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   fecha timestamp without time zone,
   comprobante varchar,
   valor double,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   cuenta_propia_id bigint,
   factura_id bigint,
   PRIMARY KEY (id)
);