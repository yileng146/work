<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:57px;left:324px;height:auto;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="finance1" idColumn="p_id" onCustomRefresh="finance_productsCustomRefresh">
   <column isCalculate="false" name="p_id" type="Integer" xid="xid1"></column>
   <column name="p_yuqishouyi" type="Float" xid="xid2"></column>
   <column name="p_qixian" type="Integer" xid="xid3"></column>
   <column name="p_rongziguimo" type="Integer" xid="xid4"></column>
   <column name="p_time" type="Date" xid="xid5"></column>
   <column name="p_salenum" type="Integer" xid="xid6"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="首页推荐"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">首页推荐</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1">
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content2"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top1"></div>
   <div class="x-panel-content" xid="content6"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="finance1">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row19" style="border-bottom-style:dotted;border-bottom-width:thin;border-bottom-color:red;">
   <div class="x-col x-col-fixed x-col-center center-block" xid="col69" style="width:10%;font-size:larger;"><![CDATA[产品号：]]></div>
   <div class="x-col x-col-fixed x-col-center" xid="col71" style="width:60%;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row21">
   <div class="x-col x-col-fixed x-col-center" xid="col79" style="background-color:transparent;width:50%;"><span xid="span16" bind-text='$model.finance1.val("p_id")+"号"' style="color:#0000A0;font-size:large;"></span></div>
   </div></div>
  <div class="x-col x-col-center center-block" xid="col75" style="font-size:larger;"><![CDATA[预期收益：]]></div>
  <div class="x-col" xid="col76"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row22">
   <div class="x-col" xid="col82" style="color:#FF8000;"><span xid="span17" bind-text='$model.finance1.val("p_yuqishouyi")+"%"' style="font-size:large;"></span></div>
   </div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row20" style="border-bottom-color:#00FFFF;">
   <div class="x-col x-col-fixed x-col-center center-block" xid="col72" style="width:10%;"><![CDATA[项目期限：]]></div>
   <div class="x-col x-col-fixed x-col-center" xid="col74" style="width:60%;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row24">
   <div class="x-col x-col-fixed x-col-center" xid="col88" style="width:50%;"><span xid="span20" bind-text='$model.finance1.val("p_qixian")+"天"' style="color:#804000;"></span></div>
   </div></div>
  <div class="x-col x-col-center center-block" xid="col77"><![CDATA[融资规模：]]></div>
  <div class="x-col" xid="col78"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row23">
   <div class="x-col" xid="col85"><span xid="span21" bind-text='$model.finance1.val("p_rongziguimo")+"万"' style="color:#8000FF;"></span></div>
   </div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"></div>
   </div>
  </li></ul> </div></div>
   </div></div>
  
</div>
</div>
</div>
</div>