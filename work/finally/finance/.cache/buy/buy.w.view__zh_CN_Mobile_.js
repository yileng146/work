window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_73154941c3e44e9db159ff9611210ca7l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_c8cbe8b808a040dd9e3bc19f5f757716l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_16d742b3f5bb4aafb711037d26d6d556l_zh_CNs_d_m/system/core.min.js','/v_7505319a0d3743ecb89de6eb7b3e7842l_zh_CNs_d_m/system/common.min.js','/v_c32db27d044b4d42ae940dfe4b72d4f5l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
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
