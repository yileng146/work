<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:302px;left:228px;height:auto;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cartGoodsData" idColumn="id" onCustomRefresh="cartGoodsDataCustomRefresh"><column label="ID" name="id" type="String" xid="xid3"></column>
  <column label="商铺ID" name="fShopID" type="String" xid="xid4"></column>
  <column label="商品ID" name="fGoodsID" type="String" xid="xid5"></column>
  <column label="商品名称" name="fTitle" type="String" xid="xid6"></column>
  <column label="图片" name="fImg" type="String" xid="xid7"></column>
  <column label="现价" name="fPrice" type="Decimal" xid="xid8"></column>
  <column label="原价" name="fOldPrice" type="Decimal" xid="xid9"></column>
  <column label="规格" name="fSize" type="String" xid="xid10"></column>
  <column label="数量" name="fNumber" type="Decimal" xid="xid11"></column>
  <column label="选中" name="fCheck" type="String" xid="xid13"></column>
  <column isCalculate="true" name="fMoney" type="Decimal" xid="xid14"></column>
  <rule xid="rule1">
   <col name="fMoney" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1">$row.val(&quot;fCheck&quot;)?$row.val(&quot;fPrice&quot;) * $row.val(&quot;fNumber&quot;):0</expr></calculate> </col> </rule></div><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cartShopData" idColumn="id" onCustomRefresh="cartShopDataCustomRefresh"><rule xid="rule2">
   <col expr="$model.cartGoodsData.sum('fMoney'.function(ev){return ev.row.val('fShopID') == $row.val('id');})" name="fTotal" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default2">$model.cartGoodsData.val(&quot;fMoney&quot;)</expr></calculate> </col> </rule>
  <column label="ID" name="id" type="String" xid="xid1"></column>
  <column label="商铺名称" name="fShopName" type="String" xid="xid2"></column>
  <column label="选中" name="fCheck" type="String" xid="xid12"></column>
  <column isCalculate="true" name="fTotal" type="Decimal" xid="xid15"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="购物车"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title"><![CDATA[购物车]]></div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="cartShopData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-fixed x-col-center" xid="col1" style="width:auto;"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="shopCheckBox" bind-ref='ref("fCheck")' checkedValue="1" onChange="shopCheckBoxChange"></span></div>
   <div class="x-col x-col-center" xid="col2"><span xid="span1" bind-text='val("fShopName")'></span></div>
   <div class="x-col" xid="col3"></div></div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="cartGoodsData" filter=' $row.val("fShopID") ==  val("id")'>
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col x-col-fixed x-col-center" xid="col7" style="width:auto;"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="goodsCheckBox" bind-ref='ref("fCheck")' checkedValue="1" onChange="goodsCheckBoxChange"></span></div>
   <div class="x-col x-col-fixed x-col-center" xid="col8" style="width:60px;"><img src="" alt="" xid="image1" bind-attr-src=' val("fImg")' style="width:60px;"></img></div>
   <div class="x-col" xid="col9"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col10"><span xid="span2" bind-text='val("fTitle").substring(0,14);'></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col13"><span xid="span5" bind-text="'型号：' +  val(&quot;fSize&quot;)"></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col16"><span xid="span6" bind-text="'￥' +  val(&quot;fPrice&quot;)"></span>
  <span xid="span9" bind-text="'￥' + val(&quot;fOldPrice&quot;)" style="text-decoration:line-through ;" bind-visible=' val("fPrice") &lt; val("fOldPrice")'></span></div>
   <div class="x-col x-col-fixed" xid="col17" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="button" xid="subBtn" icon="icon-android-remove" onClick="subBtnClick">
   <i xid="i2" class="icon-android-remove"></i>
   <span xid="span7"></span></a></div>
   <div class="x-col x-col-fixed" xid="col18" style="width:40px;"><input component="$UI/system/components/justep/input/input" class="form-control input-sm" xid="input1" bind-ref='ref("fNumber")'></input></div>
  <div class="x-col x-col-fixed" xid="col19" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="button" xid="addBtn" icon="icon-android-add" onClick="addBtnClick">
   <i xid="i3" class="icon-android-add"></i>
   <span xid="span8"></span></a></div>
  </div></div></div></li></ul> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-center" xid="col4" style="text-align:right;"><span xid="span3"><![CDATA[总价（不含运费）]]></span></div>
   <div class="x-col x-col-fixed" xid="col5" style="width:auto;"><span xid="span10" bind-text='"￥" + val("fTotal")'></span></div>
   <div class="x-col x-col-fixed x-col-center" xid="col6" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="去结算" xid="button1">
   <i xid="i1"></i>
   <span xid="span4">去结算</span></a></div></div></li></ul> </div></div>
  </div> 
</div>