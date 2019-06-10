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
var __parent0=require('$model/UI2/finally/finance/buy'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cRrmaqq';
	this._flag_='64a3db2788f1b051db4bbd5a877d800c';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"m_balance":{"define":"m_balance","name":"m_balance","relation":"m_balance","rules":{"number":true},"type":"Float"},"m_id":{"define":"m_id","name":"m_id","relation":"m_id","type":"String"},"m_in":{"define":"m_in","name":"m_in","relation":"m_in","rules":{"number":true},"type":"Float"},"m_no":{"define":"m_no","name":"m_no","relation":"m_no","type":"String"},"m_password":{"define":"m_password","name":"m_password","relation":"m_password","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"myaccountdataCustomRefresh"},"idColumn":"m_no","isMain":false,"limit":20,"xid":"myaccountdata"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"m_money":{"define":"m_money","label":"项目规模","name":"m_money","relation":"m_money","rules":{"integer":true},"type":"Integer"},"m_no":{"define":"m_no","label":"产品序号","name":"m_no","relation":"m_no","rules":{"integer":true},"type":"Integer"},"m_people":{"define":"m_people","label":"购买人数","name":"m_people","relation":"m_people","rules":{"integer":true},"type":"Integer"},"m_pjtime":{"define":"m_pjtime","label":"项目期限","name":"m_pjtime","relation":"m_pjtime","rules":{"integer":true},"type":"Integer"},"m_return":{"define":"m_return","label":"预期收益","name":"m_return","relation":"m_return","rules":{"number":true},"type":"Float"},"m_time":{"define":"m_time","label":"购买时间","name":"m_time","relation":"m_time","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"productsdataCustomRefresh"},"idColumn":"m_no","isMain":false,"limit":20,"xid":"productsdata"});
}}); 
return __result;});