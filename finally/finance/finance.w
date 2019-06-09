<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
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
    <div class="x-panel-content" xid="content1"/>
  </div> 
</div>