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
  baseFolder = path.join(__dirname, 'datos_DAQUILEMA GUAMBO DENNYS RAFAEL');
  files = fs.readdirSync(baseFolder);
	console.log('datos_DAQUILEMA GUAMBO DENNYS RAFAEL');
    for (let file of files) {
        console.log(file);
        let sql = fs.readFileSync(`${baseFolder}/${file}`, 'utf8');
        db.runSql(sql);
        console.log('Ok........');
    }
    return db.runSql('COMMIT'); 
};

exports.down = function(db) {
  return null;
};

exports._meta = {
  "version": 1
};
