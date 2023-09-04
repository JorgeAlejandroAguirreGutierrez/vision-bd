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
    let baseFolder = path.join(__dirname, 'tablas');
    let files = fs.readdirSync(baseFolder);
    for (let file of files) {
        console.log(file);
        let sql = fs.readFileSync(`${baseFolder}/${file}`, 'utf8');
        db.runSql(sql);
        console.log('Ok........');
    }
	baseFolder = path.join(__dirname, 'datos');
    files = fs.readdirSync(baseFolder);
	console.log('datos');
    for (let file of files) {
        console.log(file);
        let sql = fs.readFileSync(`${baseFolder}/${file}`, 'utf8');
        db.runSql(sql);
        console.log('Ok........');
    }
	/**
    baseFolder = path.join(__dirname, 'datos_0603467226001');
    files = fs.readdirSync(baseFolder);
	console.log('datos_0603467226001');
    for (let file of files) {
        console.log(file);
        let sql = fs.readFileSync(`${baseFolder}/${file}`, 'utf8');
        db.runSql(sql);
        console.log('Ok........');
    }
	baseFolder = path.join(__dirname, 'datos_0601308661001');
    files = fs.readdirSync(baseFolder);
	console.log('datos_0601308661001');
    for (let file of files) {
        console.log(file);
        let sql = fs.readFileSync(`${baseFolder}/${file}`, 'utf8');
        db.runSql(sql);
        console.log('Ok........');
    }**/
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
        DROP TABLE IF EXISTS afectacion_contable;
        DROP TABLE IF EXISTS banco;
        DROP TABLE IF EXISTS bodega;
        DROP TABLE IF EXISTS calificacion_cliente;
        DROP TABLE IF EXISTS categoria_producto;
		DROP TABLE IF EXISTS celular;
		DROP TABLE IF EXISTS celular_dependiente;
		DROP TABLE IF EXISTS celular_establecimiento;
		DROP TABLE IF EXISTS celular_proveedor;
		DROP TABLE IF EXISTS cheque;
		DROP TABLE IF EXISTS cierre_caja;
		DROP TABLE IF EXISTS cliente;
		DROP TABLE IF EXISTS cliente_base;
		DROP TABLE IF EXISTS contribuyente;
		DROP TABLE IF EXISTS correo;
		DROP TABLE IF EXISTS correo_dependiente;
		DROP TABLE IF EXISTS correo_establecimiento;
		DROP TABLE IF EXISTS correo_proveedor;
		DROP TABLE IF EXISTS credito;
		DROP TABLE IF EXISTS cuenta_contable;
		DROP TABLE IF EXISTS cuenta_propia;
		DROP TABLE IF EXISTS dependiente;
		DROP TABLE IF EXISTS deposito;
		DROP TABLE IF EXISTS empresa;
		DROP TABLE IF EXISTS establecimiento;
		DROP TABLE IF EXISTS estacion;
		DROP TABLE IF EXISTS estado_civil;
		DROP TABLE IF EXISTS factura;
		DROP TABLE IF EXISTS factura_compra;
		DROP TABLE IF EXISTS factura_compra_linea;
		DROP TABLE IF EXISTS factura_linea;
		DROP TABLE IF EXISTS forma_pago;
		DROP TABLE IF EXISTS franquicia_tarjeta;
		DROP TABLE IF EXISTS genero;
		DROP TABLE IF EXISTS grupo_cliente;
		DROP TABLE IF EXISTS grupo_producto;
		DROP TABLE IF EXISTS grupo_proveedor;
		DROP TABLE IF EXISTS guia_remision;
		DROP TABLE IF EXISTS impuesto;
		DROP TABLE IF EXISTS kardex;
		DROP TABLE IF EXISTS medida;
		DROP TABLE IF EXISTS menu_opcion;
		DROP TABLE IF EXISTS movimiento_contable;
		DROP TABLE IF EXISTS nd_cheque;
		DROP TABLE IF EXISTS nd_credito;
		DROP TABLE IF EXISTS nd_deposito;
		DROP TABLE IF EXISTS nd_tarjeta_credito;
		DROP TABLE IF EXISTS nd_tarjeta_debito;
		DROP TABLE IF EXISTS nd_transferencia;
		DROP TABLE IF EXISTS nota_credito;
		DROP TABLE IF EXISTS nota_credito_compra;
		DROP TABLE IF EXISTS nota_credito_compra_linea;
		DROP TABLE IF EXISTS nota_credito_linea;
		DROP TABLE IF EXISTS nota_debito;
		DROP TABLE IF EXISTS nota_debito_compra;
		DROP TABLE IF EXISTS nota_debito_compra_linea;
		DROP TABLE IF EXISTS nota_debito_linea;
		DROP TABLE IF EXISTS operador_tarjeta;
		DROP TABLE IF EXISTS origen_ingreso;
		DROP TABLE IF EXISTS parametro;
		DROP TABLE IF EXISTS perfil;
		DROP TABLE IF EXISTS permiso;
		DROP TABLE IF EXISTS plazo_credito;
		DROP TABLE IF EXISTS precio;
		DROP TABLE IF EXISTS producto;
		DROP TABLE IF EXISTS proveedor;
		DROP TABLE IF EXISTS regimen;
		DROP TABLE IF EXISTS retencion_cliente;
		DROP TABLE IF EXISTS secuencial;
		DROP TABLE IF EXISTS segmento;
		DROP TABLE IF EXISTS sesion;
		DROP TABLE IF EXISTS tarjeta_credito;
		DROP TABLE IF EXISTS tarjeta_debito;
		DROP TABLE IF EXISTS telefono;
		DROP TABLE IF EXISTS telefono_dependiente;
		DROP TABLE IF EXISTS telefono_establecimiento;
		DROP TABLE IF EXISTS telefono_proveedor;
		DROP TABLE IF EXISTS tipo_comprobante;
		DROP TABLE IF EXISTS tipo_contribuyente;
		DROP TABLE IF EXISTS tipo_gasto;
		DROP TABLE IF EXISTS tipo_identificacion;
		DROP TABLE IF EXISTS tipo_operacion;
		DROP TABLE IF EXISTS tipo_retencion;
		DROP TABLE IF EXISTS transferencia;
		DROP TABLE IF EXISTS transportista;
		DROP TABLE IF EXISTS ubicacion;
		DROP TABLE IF EXISTS usuario;
		DROP TABLE IF EXISTS vehiculo;
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
