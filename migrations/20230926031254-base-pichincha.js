'use strict';

const fs = require('fs');
var path = require('path');
require('dotenv').config();
const extension='.sql'

var dbm;
var type;
var seed;

/**
  * We receive the dbmigrate dependency from dbmigrate initially.
  * This enables us to not have to rely on NODE_PATH.
  */
exports.setup = function(options, seedLink) {
  dbm = options.dbmigrate;
  type = dbm.dataType;
  seed = seedLink;
};

exports.up = function(db) {
  console.log('Iniciando Modificacion........');
  try {
    if(process.env.MIGRATION_ENV != process.env.MIGRATION_TEST)	{
      let baseFolder = path.join(__dirname, 'base-pichincha');
      let files = fs.readdirSync(baseFolder);
      console.log('base-pichincha');
      for (let file of files) {
        console.log(file);
        let sql = fs.readFileSync(`${baseFolder}/${file}`, 'utf8');
        db.runSql(sql);
        console.log('Ok........');
      } 
    }
    return db.runSql('COMMIT');   
  } catch (err) {
    console.error('Fail......');
    throw err;
  };
};

exports.down = function(db) {
  console.log('Iniciando Delete........');
  try {
	  db.runSql(`
	    DO $$ DECLARE
	    BEGIN
        DROP TABLE IF EXISTS cliente_base;
        CREATE TABLE cliente_base(
          id       bigint GENERATED BY DEFAULT AS IDENTITY NOT NULL,
          codigo 	varchar,
          identificacion	varchar,
          apellidos 	varchar,
          nombres	varchar,
          fecha_nacimiento	timestamp without time zone,
          direccion	varchar,
          referencia	varchar,
          provincia	varchar,
          canton	varchar,
          parroquia	varchar,
          telefono	varchar,
          celular varchar,
          correo varchar,
          origen varchar,
          prioridad varchar,
          estado varchar,
          ubicacion_id bigint,
          genero_id	bigint,
          estado_civil_id	bigint,
          fecha_creacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP, 
          fecha_actualizacion	timestamp without time zone NOT NULL default CURRENT_TIMESTAMP,
          PRIMARY KEY (id)
       );
	    END $$;
	  `);
	  return db.runSql('COMMIT');
   } catch (err) {
    console.error('Fail......');
    throw err;
  }
};

exports._meta = {
  "version": 1
};
