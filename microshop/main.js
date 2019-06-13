define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.goodsDataCustomRefresh = function(event) {
		var url = require.toUrl("./json/goodsData.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};


	return Model;
});