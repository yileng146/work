define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.cartShopDataCustomRefresh = function(event) {
		var url = require.toUrl("./json/cartShopData.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};

	Model.prototype.cartGoodsDataCustomRefresh = function(event) {
		var url = require.toUrl("./json/cartGoodsData.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};

	Model.prototype.shopCheckBoxChange = function(event) {
		// 获取当前行
		var row = event.bindingContext.$object;
		// 获取当前行的id
		var shopID = row.val("id");
		// 查询data中shopID为fShopID的值
		var rows = this.comp("cartGoodsData").find([ 'fShopID' ], [ shopID ]);
		for (var i = 0; i < rows.length; i++) {
			// 修改value，即改变按钮是否选中
			// val为一个参数的时候为取值
			// 两个参数的时候为赋值
			rows[i].val('fCheck', event.value);
		}
	};

	Model.prototype.goodsCheckBoxChange = function(event) {
		// 获取当前行
		var row = event.bindingContext.$object;
		// 获取当前行的id
		var shopID = row.val("fShopID");
		// 查询data中 fShopID为shopID、fCheck为1的值
		var rows = this.comp("cartGoodsData").find([ 'fShopID', 'fCheck' ], [ shopID, 1 ]);
		var rowsnum = rows.length;
		if (event.checked) {
			rowsnum++;
		} else {
			rowsnum--;
		}
		if (rowsnum > 0) {
			// 改data中的值
			this.comp("cartShopData").setValueByID('fCheck', 1, shopID);
		} else {
			this.comp("cartShopData").setValueByID('fCheck', "", shopID);
		}
	};

	Model.prototype.addBtnClick = function(event) {
		var row = event.bindingContext.$object;
		row.val('fNumber', row.val('fNumber') + 1);

	};

	Model.prototype.subBtnClick = function(event) {
		var row = event.bindingContext.$object;
		if (row.val('fNumber') - 1 >= 1) {
			row.val('fNumber', row.val('fNumber') - 1);
		}

	};

	return Model;
});