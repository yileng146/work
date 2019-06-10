define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.user_infCustomRefresh = function(event){
		var url = require.toUrl("./json/user_information.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};

	return Model;
});