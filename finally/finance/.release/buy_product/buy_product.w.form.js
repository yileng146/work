define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/finally/finance/buy_product'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='czEBfIv';
	this._flag_='434f6d40949baa856afc1d7797a60eec';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"p_id":{"define":"p_id","name":"p_id","relation":"p_id","rules":{"integer":true},"type":"Integer"},"p_qixian":{"define":"p_qixian","name":"p_qixian","relation":"p_qixian","rules":{"integer":true},"type":"Integer"},"p_rongziguimo":{"define":"p_rongziguimo","name":"p_rongziguimo","relation":"p_rongziguimo","rules":{"integer":true},"type":"Integer"},"p_yuqishouyi":{"define":"p_yuqishouyi","name":"p_yuqishouyi","relation":"p_yuqishouyi","rules":{"number":true},"type":"Float"}},"directDelete":false,"events":{"onCustomRefresh":"finance_2CustomRefresh"},"idColumn":"p_id","isMain":false,"limit":20,"xid":"finance_2"});
}}); 
return __result;});