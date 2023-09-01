CREATE TABLE nota_credito_linea(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   cantidad_venta bigint,
   costo_unitario_venta double,
   cantidad bigint,
   costo_unitario double,
   subtotal_linea double,
   importe_iva_linea double,
   total_linea double,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   impuesto_id bigint,
   precio_id bigint,
   producto_id bigint,
   bodega_id bigint,
   nota_credito_id bigint,
   PRIMARY KEY (id)
);