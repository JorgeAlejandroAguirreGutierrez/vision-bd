CREATE TABLE estacion(
   id       bigint GENERATED BY DEFAULT AS IDENTITY NOT NULL,
   codigo 	varchar,
   codigo_sri varchar,
   descripcion varchar,
   dispositivo varchar,
   ip varchar,
   punto_venta varchar,
   estado varchar,
   regimen_id bigint,
   establecimiento_id bigint,
   fecha_creacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP, 
   fecha_actualizacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP,
   PRIMARY KEY (id)
);