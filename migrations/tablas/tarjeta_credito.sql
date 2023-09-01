CREATE TABLE tarjeta_credito(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   fecha timestamp without time zone,
   titular varchar,
   identificacion varchar,
   nombre varchar,
   diferido varchar,
   lote varchar,
   valor double,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   banco_id bigint,
   operador_tarjeta_id bigint,
   franquicia_tarjeta_id bigint,
   factura_id bigint,
   PRIMARY KEY (id)
);