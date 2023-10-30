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
        insert into tipo_comprobante(id, codigo, codigo_sri, descripcion, abreviatura, nombre_tabla, electronica, estado, fecha_creacion, fecha_actualizacion) values(default, 'TCO000016', 'NA', 'FACTURA INTERNA', 'FACTURA INTERNA', null, 'NO', 'ACTIVO', default, default);
      END $$;
	  `);
	  return db.runSql('COMMIT');
   } catch (err) {
    console.error('Error......');
    throw err;
  }
};

exports.down = function(db) {
  console.log('Iniciando Delete........');
  try {
	  db.runSql(`
	    DO $$ DECLARE
	    BEGIN
        DELETE FROM tipo_comprobante where codigo = 'TCO000016';
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
