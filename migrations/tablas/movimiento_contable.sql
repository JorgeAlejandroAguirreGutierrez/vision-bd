CREATE TABLE movimiento_contable(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   estado	varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   afectacion_contable_id bigint,
   inventario_id bigint,
   costo_venta_id bigint,
   devolucion_compra_id bigint,
   descuento_compra bigint,
   venta_id bigint,
   devolucion_venta bigint,
   descuento_venta bigint,
   devolucion_costo_venta bigint,
   empresa_id bigint,
   PRIMARY KEY (id)
);