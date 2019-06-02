define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/demo/microshop/microshop/cart'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='crqQ3Yf';
	this._flag_='d00be8078459151dc7309015c35b5af9';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fCheck":{"define":"fCheck","label":"选中","name":"fCheck","relation":"fCheck","type":"String"},"fGoodsID":{"define":"fGoodsID","label":"商品ID","name":"fGoodsID","relation":"fGoodsID","type":"String"},"fImg":{"define":"fImg","label":"图片","name":"fImg","relation":"fImg","type":"String"},"fMoney":{"define":"EXPRESS","name":"fMoney","relation":"EXPRESS","rules":{"calculate":"$row.val(\"fCheck\")?$row.val(\"fPrice\") * $row.val(\"fNumber\"):0","number":true},"type":"Decimal"},"fNumber":{"define":"fNumber","label":"数量","name":"fNumber","relation":"fNumber","rules":{"number":true},"type":"Decimal"},"fOldPrice":{"define":"fOldPrice","label":"原价","name":"fOldPrice","relation":"fOldPrice","rules":{"number":true},"type":"Decimal"},"fPrice":{"define":"fPrice","label":"现价","name":"fPrice","relation":"fPrice","rules":{"number":true},"type":"Decimal"},"fShopID":{"define":"fShopID","label":"商铺ID","name":"fShopID","relation":"fShopID","type":"String"},"fSize":{"define":"fSize","label":"规格","name":"fSize","relation":"fSize","type":"String"},"fTitle":{"define":"fTitle","label":"商品名称","name":"fTitle","relation":"fTitle","type":"String"},"id":{"define":"id","label":"ID","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"cartGoodsDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"cartGoodsData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fCheck":{"define":"fCheck","label":"选中","name":"fCheck","relation":"fCheck","type":"String"},"fShopName":{"define":"fShopName","label":"商铺名称","name":"fShopName","relation":"fShopName","type":"String"},"fTotal":{"define":"EXPRESS","name":"fTotal","relation":"EXPRESS","rules":{"calculate":"$model.cartGoodsData.val(\"fMoney\")","number":true},"type":"Decimal"},"id":{"define":"id","label":"ID","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"cartShopDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"cartShopData"});
}}); 
return __result;});