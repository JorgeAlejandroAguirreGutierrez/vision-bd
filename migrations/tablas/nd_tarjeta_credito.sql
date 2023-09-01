CREATE TABLE nd_tarjeta_credito(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   diferido varchar,
   titular varchar,
   identificacion varchar,
   nombre varchar,
   lote varchar,
   valor double,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   banco_id bigint,
   operador_tarjeta_id bigint,
   franquicia_tarjeta_id bigint,
   nota_debito_id bigint,
   PRIMARY KEY (id)
);