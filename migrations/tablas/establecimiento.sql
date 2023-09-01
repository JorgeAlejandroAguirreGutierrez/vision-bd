CREATE TABLE establecimiento(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   codigo_sri varchar,
   descripcion varchar,
   direccion varchar,
   latitudgeo double,
   longitudgeo double,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   regimen_id bigint,
   ubicacion_id bigint,
   empresa_id bigint,
   PRIMARY KEY (id)
);