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
  try {
   
    baseFolder = path.join(__dirname, 'datos_MOLINA AVILES PLINIO CORNELIO');
    files = fs.readdirSync(baseFolder);
	console.log('datos_MOLINA AVILES PLINIO CORNELIO');
    for (let file of files) {
        console.log(file);
        let sql = fs.readFileSync(`${baseFolder}/${file}`, 'utf8');
        db.runSql(sql);
        console.log('Ok........');
    }
	baseFolder = path.join(__dirname, 'datos_MOLINA CONSTRUCTORES');
    files = fs.readdirSync(baseFolder);
	console.log('datos_MOLINA CONSTRUCTORES');
    for (let file of files) {
        console.log(file);
        let sql = fs.readFileSync(`${baseFolder}/${file}`, 'utf8');
        db.runSql(sql);
        console.log('Ok........');
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
