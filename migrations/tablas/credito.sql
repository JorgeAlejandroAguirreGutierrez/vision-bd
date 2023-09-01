CREATE TABLE credito(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   saldo double,
   unidad_tiempo varchar,
   plazo double,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   PRIMARY KEY (id)
);