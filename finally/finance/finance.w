<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:320px;left:573px;"> 
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
     <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="finance_products">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-fixed pull-left" xid="col1"><span xid="span1" bind-text=' val("p_id") +"号"' style="color:#800080;"></span></div>
   <div class="x-col x-col-25" xid="col3"><span xid="span3" bind-text='val("p_time")'></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col x-col-center" xid="col7" style="border-right-style:groove;"><span xid="span4" bind-text='val("p_yuqishouyi")' style="font-size:large;color:#FF8000;"></span>
  <span xid="span8" style="font-size:x-small;"><![CDATA[%]]></span></div>
   <div class="x-col x-col-center" xid="col8" style="border-right-style:groove;"><span xid="span9" bind-text='val("p_qixian")' style="font-size:large;color:#0000FF;"></span><span xid="span10" style="font-size:x-small;"><![CDATA[天]]></span></div>
   <div class="x-col x-col-center" xid="col9"><span xid="span12" bind-text='val("p_rongziguimo")' style="font-size:large;color:#8000FF;"></span>
  <span xid="span13" style="font-size:x-small;color:#000000;"><![CDATA[万]]></span></div>
  <div class="x-col x-col-center" xid="col10" bind-visible=' val("fRush") != val("fRushray")'><a component="$UI/system/components/justep/button/button" class="btn btn-default pull-right" xid="button2" bind-text=' val("fRush")'>
   <i xid="i1"></i>
   <span xid="span14"></span></a>
  </div></div>
  
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col11" style="border-bottom-style:groove;"><span xid="span5"><![CDATA[预期收益率]]></span></div>
   <div class="x-col" xid="col12" style="border-bottom-style:groove;"><span xid="span6"><![CDATA[项目期限]]></span></div>
   <div class="x-col" xid="col13" style="border-bottom-style:groove;"><span xid="span7"><![CDATA[融资规模]]></span></div>
  <div class="x-col" xid="col14" style="border-bottom-style:groove;"></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="border-bottom-style:groove;">
   <span xid="span15"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button3" icon="icon-android-contact" style="background-color:#FFFFFF;height:35;width:35;">
   <i xid="i2" class="icon-android-contact"></i>
   <span xid="span16"></span></a>
  <span xid="span17" bind-text='val("fPurchase")'></span>
  </span></div></li></ul> </div>
  </div>
    
  </div> 
</div>