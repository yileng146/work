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

	Model.prototype.button2Click = function(event){
		var user_information=this.comp("user_information");
          var row=user_information.getFirstRow();
          var password=this.comp("input3").val();
          var money=parseInt(user_information.getValue("user_balance"))+parseInt(this.comp("input4").val());
          if(password==user_information.getValue("user_password")){
             user_information.setValue("user_balance", money, row);
             this.comp("user_information").saveData();
             justep.Util.hint("充值成功");  
          }else{
          justep.Util.hint("密码错误");
          }
	};

	return Model;
});