CREATE TABLE bodega(
   id       bigint GENERATED BY DEFAULT AS IDENTITY NOT NULL,
   codigo 	varchar,
   nombre varchar,
   abreviatura varchar,
   estado varchar,
   empresa_id bigint,
   fecha_creacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP, 
   fecha_actualizacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP,
   PRIMARY KEY (id)
);