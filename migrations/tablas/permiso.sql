CREATE TABLE permiso(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   menu_opcion_id bigint,
   perfil_id bigint,
   PRIMARY KEY (id)
);