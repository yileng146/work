window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_275906b553824cc6acf167e00cce933dl_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_76cfd3b4d89c416c91a76e0b11b89e05l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_f6c35ee4ba2e4d97b034f69f6856c0cal_zh_CNs_d_m/system/core.min.js','/v_603cacff87f34417bce60b4984fd9903l_zh_CNs_d_m/system/common.min.js','/v_790cf5fa38d9490da3c159ba50d7361cl_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
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
require('$model/UI2/system/components/justep/data/baasData');
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
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"user_balance":{"define":"user_balance","label":"user_balance","name":"user_balance","relation":"user_balance","rules":{"integer":true},"type":"Integer"},"user_id":{"define":"user_id","label":"user_id","name":"user_id","relation":"user_id","rules":{"integer":true},"type":"Integer"},"user_password":{"define":"user_password","label":"user_password","name":"user_password","relation":"user_password","type":"String"}},"directDelete":false,"events":{},"idColumn":"user_id","isMain":false,"limit":20,"queryAction":"queryUser_inf","saveAction":"saveUser_inf","tableName":"user_inf","url":"/jpush/copy/finally","xid":"user_info2"});
}}); 
return __result;});
