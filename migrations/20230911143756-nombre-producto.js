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
        alter table factura_linea add column nombre_producto varchar;
        alter table nota_credito_linea add column nombre_producto varchar;
        alter table nota_debito_linea add column nombre_producto varchar;
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
      alter table factura_linea drop column nombre_producto;
      alter table nota_credito_linea drop column nombre_producto;
      alter table nota_debito_linea drop column nombre_producto;
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
