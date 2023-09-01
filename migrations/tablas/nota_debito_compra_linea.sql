CREATE TABLE nota_debito_compra_linea(
   id       bigint IDENTITY NOT NULL,
   codigo 	varchar,
   cantidad bigint,
   costo_unitario double,
   descuento double,
   subtotal_linea double,
   iva_linea double,
   total_linea double,
   entregado varchar,
   fecha_creacion	timestamp without time zone NOT NULL, 
   fecha_actualizacion	timestamp without time zone NOT NULL,
   impuesto_id bigint,
   producto_id bigint,
   bodega_id bigint,
   nota_debito_compra_id bigint,
   PRIMARY KEY (id)
);