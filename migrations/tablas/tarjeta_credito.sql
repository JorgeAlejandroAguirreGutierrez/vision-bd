CREATE TABLE tarjeta_credito(
   id       bigint GENERATED BY DEFAULT AS IDENTITY NOT NULL,
   codigo 	varchar,
   fecha timestamp without time zone,
   titular varchar,
   identificacion varchar,
   nombre varchar,
   diferido varchar,
   lote varchar,
   valor double precision,
   banco_id bigint,
   operador_tarjeta_id bigint,
   franquicia_tarjeta_id bigint,
   factura_id bigint,
   fecha_creacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP, 
   fecha_actualizacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP,
   PRIMARY KEY (id)
);