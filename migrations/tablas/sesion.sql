CREATE TABLE sesion(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   fecha_apertura timestamp without time zone,
   fecha_cierre timestamp without time zone,
   ip varchar,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   usuario_id bigint,
   empresa_id bigint,
   PRIMARY KEY (id)
);