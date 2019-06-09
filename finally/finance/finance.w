<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:286px;left:447px;height:auto;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="finance_products" idColumn="p_id" onCustomRefresh="finance_productsCustomRefresh"><column isCalculate="false" name="p_id" type="Integer" xid="xid1"></column>
  <column name="p_yuqishouyi" type="Float" xid="xid2"></column>
  <column name="p_qixian" type="Integer" xid="xid3"></column>
  <column name="p_rongziguimo" type="Integer" xid="xid4"></column>
  <column name="p_time" type="Date" xid="xid5"></column>
  <column name="p_salenum" type="Integer" xid="xid6"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="理财产品"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">理财产品</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list9" data="finance_products">
   <ul class="x-list-template" xid="listTemplateUl7">
     <li xid="li7"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row31">
   <div class="x-col" xid="col105"><span xid="span2" bind-text=' $model.finance_products.val("p_id")'></span></div>
   <div class="x-col" xid="col107"><span xid="span3" bind-text=' $model.finance_products.val("p_time")'></span></div>
  </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col14"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output9" bind-ref=""></div></div>
   <div class="x-col" xid="col57"><![CDATA[%]]></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col21"><![CDATA[预期收益率]]></div>
   </div></div>
   <div class="x-col" xid="col3"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col" xid="col24"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output10" bind-ref='$model.data1.ref("fLimit")'></div></div>
   <div class="x-col" xid="col52"><![CDATA[天]]></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
   <div class="x-col" xid="col30"><![CDATA[项目期限]]></div>
   </div></div>
   
  
  <div class="x-col" xid="col37"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
   <div class="x-col" xid="col38"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output11" bind-ref='$model.data1.ref("fMoney")'></div></div>
   <div class="x-col" xid="col53"><![CDATA[万]]></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
   
   <div class="x-col" xid="col42"><![CDATA[融资规模]]></div></div></div><div class="x-col x-col-20 x-col-center pull-right" xid="col4"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="抢购" xid="button1" style="width:100%;">
   <i xid="i1"></i>
   <span xid="span1">抢购</span></a></div>
  </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12">
   <div class="x-col center-block" xid="col46"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output12" bind-ref='$model.data1.ref("fNumber")'></div></div>
   <div class="x-col x-col-90" xid="col62"><![CDATA[人已购买]]></div></div></li></ul></div></div>
    
  </div> 
</div>