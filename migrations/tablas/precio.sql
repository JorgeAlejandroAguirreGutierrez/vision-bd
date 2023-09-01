CREATE TABLE precio(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   costo double,
   margen_ganancia double,
   precio_sin_iva double,
   precio_venta_publico double,
   precio_venta_publico_manual double,
   utilidad double,
   utilidad_porcentaje double,
   estado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   segmento_id bigint,
   producto_id bigint,
   PRIMARY KEY (id)
);