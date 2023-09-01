CREATE TABLE cheque(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   numero varchar,
   tipo varchar,
   fecha timestamp without time zone,
   fecha_efectivizacion timestamp without time zone,
   valor double,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   banco_id bigint,
   factura_id bigint,
   PRIMARY KEY (id)
);