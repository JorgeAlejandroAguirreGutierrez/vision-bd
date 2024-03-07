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
        insert into impuesto(id, codigo, codigo_sri, descripcion, abreviatura, porcentaje, estado, fecha_creacion, fecha_actualizacion) values(default, 'IMP012001000006', '4', 'IVA', '15 %', 15, 'ACTIVO', default, default);
        insert into impuesto(id, codigo, codigo_sri, descripcion, abreviatura, porcentaje, estado, fecha_creacion, fecha_actualizacion) values(default, 'IMP012001000007', '5', 'IVA', '5 %', 5, 'ACTIVO', default, default);
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
        delete from impuesto where codigo_sri='4';
        delete from impuesto where codigo_sri='5';
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
