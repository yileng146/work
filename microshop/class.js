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

	Model.prototype.modelParamsReceive = function(event){
//		alert(this.params.rootID);
	};

	Model.prototype.list3Click = function(event){
		justep.shell.showPage("list",{
		"classID":this.comp("threeClassData").val('fClassName')});
	};

	Model.prototype.modelActive = function(event){
		if (window.statusBar) {
			window.statusBar.styleDefault();
		}
	};

	return Model;
});