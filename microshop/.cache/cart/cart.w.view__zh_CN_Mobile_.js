window.__justep.__ResourceEngine.loadCss([{url: '/UI2/v_6f0b8e681422492ea230ac55214877dfl_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/UI2/v_ac7670ee63da4cdf9318e4a4ab28a731l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/UI2/system/components/justep/lib/css2/dataControl,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/lib/css3/round,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/dataTables/css/responsive,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/lib/css4/e-commerce,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/lib/css1/linear,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_0a5a021f12714617be953075c29ce30al_zh_CNs_d_m/system/core.min.js','/v_c45477d5a71a42c3bcf9cbe94e1bcf7dl_zh_CNs_d_m/system/common.min.js','/v_ed3246709cbb47538005d9d97b2c03cal_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
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
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fCheck":{"define":"fCheck","label":"选中","name":"fCheck","relation":"fCheck","type":"String"},"fGoodsID":{"define":"fGoodsID","label":"商品ID","name":"fGoodsID","relation":"fGoodsID","type":"String"},"fImg":{"define":"fImg","label":"图片","name":"fImg","relation":"fImg","type":"String"},"fNumber":{"define":"fNumber","label":"数量","name":"fNumber","relation":"fNumber","rules":{"number":true},"type":"Decimal"},"fOldPrice":{"define":"fOldPrice","label":"原价","name":"fOldPrice","relation":"fOldPrice","rules":{"number":true},"type":"Decimal"},"fPrice":{"define":"fPrice","label":"现价","name":"fPrice","relation":"fPrice","rules":{"number":true},"type":"Decimal"},"fShopID":{"define":"fShopID","label":"商铺ID","name":"fShopID","relation":"fShopID","type":"String"},"fSize":{"define":"fSize","label":"规格","name":"fSize","relation":"fSize","type":"String"},"fTitle":{"define":"fTitle","label":"商品名称","name":"fTitle","relation":"fTitle","type":"String"},"id":{"define":"id","label":"ID","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"cartGoodsDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"cartGoodsData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fCheck":{"define":"fCheck","label":"选中","name":"fCheck","relation":"fCheck","type":"String"},"fShopName":{"define":"fShopName","label":"商铺名称","name":"fShopName","relation":"fShopName","type":"String"},"id":{"define":"id","label":"ID","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"cartShopDataCustomRefresh"},"idColumn":"id","isMain":false,"limit":20,"xid":"cartShopData"});
}}); 
return __result;});
