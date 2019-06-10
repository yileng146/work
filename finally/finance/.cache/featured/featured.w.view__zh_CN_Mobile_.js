window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_8147e29084364388b3f90041b0f4ec96l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_5e414d3280444b7fa6969a21dbdcbcf2l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_66aeb01b517c4e4c8d656e28fe384ce3l_zh_CNs_d_m/system/core.min.js','/v_16e820df45664aee86e5af3e1e31eda5l_zh_CNs_d_m/system/common.min.js','/v_21c2d73109c5443594d50772aad3c4bal_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/finally/finance/featured'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cz2eUVb';
	this._flag_='d0f385dff9f0efe4275689fb4f1509b9';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"p_id":{"define":"p_id","name":"p_id","relation":"p_id","rules":{"integer":true},"type":"Integer"},"p_qixian":{"define":"p_qixian","name":"p_qixian","relation":"p_qixian","rules":{"integer":true},"type":"Integer"},"p_rongziguimo":{"define":"p_rongziguimo","name":"p_rongziguimo","relation":"p_rongziguimo","rules":{"integer":true},"type":"Integer"},"p_salenum":{"define":"p_salenum","name":"p_salenum","relation":"p_salenum","rules":{"integer":true},"type":"Integer"},"p_time":{"define":"p_time","name":"p_time","relation":"p_time","rules":{"date":true},"type":"Date"},"p_yuqishouyi":{"define":"p_yuqishouyi","name":"p_yuqishouyi","relation":"p_yuqishouyi","rules":{"number":true},"type":"Float"}},"directDelete":false,"events":{"onCustomRefresh":"finance_productsCustomRefresh"},"idColumn":"p_id","isMain":false,"limit":20,"xid":"finance_products"});
}}); 
return __result;});
