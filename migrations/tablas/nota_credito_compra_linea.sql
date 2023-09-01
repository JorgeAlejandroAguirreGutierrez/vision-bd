CREATE TABLE nota_credito_compra_linea(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   cantidad_compra bigint,
   costo_unitario_compra double,
   cantidad bigint,
   costo_unitario double,
   subtotal_linea double,
   importe_iva_linea double,
   total_linea double,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   impuesto_id bigint,
   producto_id bigint,
   bodega_id bigint,
   nota_credito_compra_id bigint,
   PRIMARY KEY (id)
);