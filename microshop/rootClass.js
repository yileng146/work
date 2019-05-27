define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.classDataCustomRefresh = function(event){

		var url = require.toUrl("./json/rootClassData.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	
	};

	Model.prototype.list1Click = function(event){
        justep.Shell.showPage("class.w");
        
	};

	return Model;
});