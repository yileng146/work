define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.productsdataCustomRefresh = function(event){
		var url = require.toUrl("Json/money.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};



	Model.prototype.myaccountdataCustomRefresh = function(event){
		var url = require.toUrl("Json/myaccount.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};



	return Model;
});