CREATE TABLE usuario(
   id       bigint GENERATED BY DEFAULT AS IDENTITY NOT NULL,
   codigo 	varchar,
   identificacion varchar,
   apodo varchar,
   nombre varchar,
   telefono varchar,
   celular varchar,
   correo varchar,
   contrasena varchar,
   confirmar_contrasena varchar,
   avatar varchar,
   cambiar_contrasena varchar,
   pregunta varchar,
   respuesta varchar,
   estado varchar,
   perfil_id bigint,
   estacion_id bigint,
   fecha_creacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP, 
   fecha_actualizacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP,
   PRIMARY KEY (id)
);