define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.secondClassDataCustomRefresh = function(event) {
		var url = require.toUrl("./json/secondClassData.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};

	Model.prototype.threeClassDataCustomRefresh = function(event) {
		var url = require.toUrl("./json/threeClassData.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};

	return Model;
});