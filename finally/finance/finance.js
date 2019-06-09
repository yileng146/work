define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

    Model.prototype.finance_productsCustomRefresh = function(event) {
		var url = require.toUrl("./json/finance_products.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};

	return Model;
});