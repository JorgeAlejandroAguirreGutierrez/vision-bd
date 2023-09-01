CREATE TABLE cuenta_propia(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   email	varchar,
   cliente_id bigint,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   PRIMARY KEY (id)
);