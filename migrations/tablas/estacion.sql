CREATE TABLE estacion(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   codigo_sri varchar,
   descripcion varchar,
   dispositivo varchar,
   ip varchar,
   punto_venta varchar,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   regimen_id bigint,
   establecimiento_id bigint,
   PRIMARY KEY (id)
);