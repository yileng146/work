define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.finance_productsCustomRefresh = function(event){
		var url = require.toUrl("./json/finance_products.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};

	Model.prototype.list1Click = function(event){
         var p_id=this.comp("finance_products").val('id');
        justep.Shell.showPage(require.toUrl("./buy_product.w"), {"p_id":p_id});
	};

	return Model;
});