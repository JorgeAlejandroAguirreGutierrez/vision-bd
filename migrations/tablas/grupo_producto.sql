CREATE TABLE grupo_producto(
   id       bigint GENERATED BY DEFAULT AS IDENTITY NOT NULL,
   codigo 	varchar,
   grupo varchar,
   subgrupo varchar,
   seccion varchar,
   linea varchar,
   sublinea varchar,
   presentacion varchar,
   estado varchar,
   categoria_producto_id bigint,
   cuenta_contable_id bigint,
   empresa_id bigint,
   fecha_creacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP, 
   fecha_actualizacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP,
   PRIMARY KEY (id)
);