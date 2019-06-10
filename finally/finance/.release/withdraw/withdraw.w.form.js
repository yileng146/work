define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/finally/finance/withdraw'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c22ErIz';
	this._flag_='105cd98283502f1d2623cfffe1096976';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"user_balance":{"define":"user_balance","label":"user_balance","name":"user_balance","relation":"user_balance","rules":{"integer":true},"type":"Integer"},"user_id":{"define":"user_id","label":"user_id","name":"user_id","relation":"user_id","rules":{"integer":true},"type":"Integer"},"user_password":{"define":"user_password","label":"user_password","name":"user_password","relation":"user_password","type":"String"}},"directDelete":false,"events":{},"idColumn":"user_id","isMain":false,"limit":20,"queryAction":"queryUser_inf","saveAction":"saveUser_inf","tableName":"user_inf","url":"/jpush/copy/finally","xid":"user_inf"});
}}); 
return __result;});