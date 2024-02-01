'use strict';

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
	  db.runSql(`
	    DO $$ DECLARE
	    BEGIN
        alter table empresa add column gran_contribuyente varchar;
        alter table empresa add column artesado_calificado varchar;
	    END $$;
	  `);
	  return db.runSql('COMMIT');
   } catch (err) {
    console.error('Fail......');
    throw err;
  }
};

exports.down = function(db) {
  console.log('Iniciando Borrado........');
  try {
	  db.runSql(`
	    DO $$ DECLARE
	    BEGIN
      alter table empresa drop column gran_contribuyente;
      alter table empresa drop column artesado_calificado;
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
