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
        ALTER TABLE nota_credito_compra RENAME COLUMN descuento TO descuento_gravado;
        ALTER TABLE nota_credito_compra ADD COLUMN descuento_no_gravado double precision;
      END $$;
	  `);
	  return db.runSql('COMMIT');
   } catch (err) {
    console.error('Error......');
    throw err;
  }
};

exports.down = function(db) {
  try {
	  db.runSql(`
	    DO $$ DECLARE
	    BEGIN
        ALTER TABLE nota_credito_compra RENAME COLUMN  descuento_gravado TO descuento;
        ALTER TABLE nota_credito_compra DROP COLUMN descuento_no_gravado;
	    
      END $$;
	  `);
	  return db.runSql('COMMIT');
   } catch (err) {
    console.error('Error......');
    throw err;
  }
};

exports._meta = {
  "version": 1
};