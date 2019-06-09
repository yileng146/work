<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:320px;left:573px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="finance_products" idColumn="p_id" onCustomRefresh="finance_productsCustomRefresh"><column isCalculate="false" name="p_id" type="String" xid="xid1"></column>
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
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C87A3AC469F000011DD418A71AF952C0">
    
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="finance_products">
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1">
       
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><span xid="span7" bind-text='val("p_yuqishouyi")'></span></div>
   <div class="x-col" xid="col2"></div>
   <div class="x-col" xid="col3"></div></div></li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>
    
  </div> 
</div>