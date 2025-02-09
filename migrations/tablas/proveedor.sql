CREATE TABLE proveedor(
   id       bigint GENERATED BY DEFAULT AS IDENTITY NOT NULL,
   codigo 	varchar,
   identificacion varchar,
   razon_social varchar,
   nombre_comercial varchar,
   direccion varchar,
   referencia varchar,
   latitudgeo double precision,
   longitudgeo double precision,
   monto_financiamiento double precision,
   especial varchar,
   obligado_contabilidad varchar,
   fantasma varchar,
   relacionado varchar,
   estado varchar,
   tipo_identificacion_id bigint,
   tipo_contribuyente_id bigint,
   grupo_proveedor_id bigint,
   forma_pago_id bigint,
   plazo_credito_id bigint,
   ubicacion_id bigint,
   empresa_id bigint,
   fecha_creacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP, 
   fecha_actualizacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP,
   PRIMARY KEY (id)
);