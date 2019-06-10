define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.user_infCustomRefresh = function(event){
		var url = require.toUrl("./json/user_inf.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};

	Model.prototype.button2Click = function(event){
		var user_inf=this.comp("user_inf");
		  var row=user_inf.getFirstRow();
          var password=this.comp("input3").val();
          var money=parseInt(user_inf.getValue("user_balance"))-parseInt(this.comp("input2").val());
          if(password==user_inf.getValue("user_password")){
             user_inf.setValue("user_balance", money, row);
             this.comp("user_inf").saveData();
             justep.Util.hint("提现成功");  
          }else{
          justep.Util.hint("密码错误");
          }

	};

	return Model;
});