define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};


	Model.prototype.modelParamsReceive = function(event){
        alter(this.params.p_ID)
	};


	Model.prototype.finance_2CustomRefresh = function(event){
     var url = require.toUrl("./json/f2.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};






	return Model;
});