CREATE TABLE grupo_producto(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   grupo varchar,
   subgrupo varchar,
   seccion varchar,
   linea varchar,
   sublinea varchar,
   presentacion varchar,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   categoria_producto_id bigint,
   cuenta_contable_id bigint,
   empresa_id bigint,
   PRIMARY KEY (id)
);