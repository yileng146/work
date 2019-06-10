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

	Model.prototype.top_upClick = function(event){
    this.comp("windowDialog1").open({
		"params":{
		"operator":"new"
		}
		});
	};

	Model.prototype.deposit_btnClick = function(event){
		this.comp("windowDialog2").open({
		"params":{
		"operator":"new"
		}
		});
	};

	Model.prototype.financeIOClick = function(event){
		this.comp("windowDialog3").open({
		"params":{
		"operator":"new"
		}
		});
	};

	return Model;
});