CREATE TABLE tipo_retencion(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   codigo_norma varchar,
   provincia varchar,
   canton varchar,
   parroquia varchar,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   PRIMARY KEY (id)
);