CREATE TABLE nota_debito_compra_linea(
   id       bigint GENERATED BY DEFAULT AS IDENTITY NOT NULL,
   codigo 	varchar,
   cantidad bigint,
   costo_unitario double precision,
   valor_descuento_linea double precision,
   subtotal_linea double precision,
   importe_iva_linea double precision,
   total_linea double precision,
   entregado varchar,
   impuesto_id bigint,
   producto_id bigint,
   nota_debito_compra_id bigint,
   fecha_creacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP, 
   fecha_actualizacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP,
   PRIMARY KEY (id)
);