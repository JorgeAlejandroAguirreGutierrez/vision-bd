CREATE TABLE contribuyente(
   id       bigint GENERATED BY DEFAULT AS IDENTITY NOT NULL,
   codigo 	varchar,
   identificacion	varchar,
   razon_social 	varchar,
   jurisdiccion	varchar,
   estado	varchar,
   regimen varchar,
   fecha_inicio timestamp without time zone,
   fecha_actualiza timestamp without time zone,
   fecha_suspension timestamp without time zone,
   fecha_reinicio timestamp without time zone,
   obligado_contabilidad varchar,
   establecimiento varchar,
   nombre_comercial varchar,
   estado_establecimiento varchar,
   provincia varchar,
   canton varchar,
   parroquia varchar,
   codigo_ciiu varchar,
   actividad_economica varchar,
   tipo_contribuyente_id bigint,
   ubicacion_id bigint,
   fecha_creacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP, 
   fecha_actualizacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP,
   PRIMARY KEY (id)
);