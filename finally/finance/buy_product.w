<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:36px;left:656px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="finance1" idColumn="p_id" onCustomRefresh="finance_productsCustomRefresh">
   <column isCalculate="false" name="p_id" type="Integer" xid="xid1"></column>
   <column name="p_yuqishouyi" type="Float" xid="xid2"></column>
   <column name="p_qixian" type="Integer" xid="xid3"></column>
   <column name="p_rongziguimo" type="Integer" xid="xid4"></column>
   <column name="p_time" type="Date" xid="xid5"></column>
   <column name="p_salenum" type="Integer" xid="xid6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="user1" onCustomRefresh="user_infCustomRefresh" idColumn="u_id">
   <column name="u_id" type="String" xid="column1"></column>
   <column name="u_password" type="String" xid="column2"></column>
   <column name="p_id" type="String" xid="column3"></column>
   <column name="u_blance" type="Float" xid="column4"></column>
   <column name="u_in" type="Float" xid="column5"></column></div></div>  
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
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="finance1">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><span xid="span1" bind-text='val("m_no")'></span>
  <span xid="span2"><![CDATA[号产品]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4"><span xid="span3" style="font-size:xx-large;" bind-text='val("m_return")'></span>
  <span xid="span4"><![CDATA[%]]></span></div>
   <div class="x-col" xid="col5"><span xid="span5" style="font-size:xx-large;" bind-text='val("m_pjtime")'></span>
  <span xid="span6"><![CDATA[天]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col7"><span xid="span7"><![CDATA[预期收益率]]></span></div>
   <div class="x-col" xid="col8"><span xid="span8"><![CDATA[项目期限]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col12"><span xid="span9" bind-text='val("m_money")'></span>
  <span xid="span11"><![CDATA[万元]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col15" style="font-size:small;">
   <span xid="span10">融资规模</span></div></div>
  </li>
  <li xid="li3"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="$model.user1">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col" xid="col18">
    <span xid="span12">账户余额：</span></div> 
   <div class="x-col x-col-80" xid="col20">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" bind-ref='$model.myaccountdata.ref("m_balance")'></input></div> 
   <div class="x-col" xid="col21">
    <a component="$UI/system/components/justep/button/button" class="btn" label="全投" xid="button1">
     <i xid="i1"></i>
     <span xid="span14">全投</span></a> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col" xid="col22">
    <span xid="span16">交易密码：</span></div> 
   <div class="x-col x-col-80" xid="col24">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" dataType="String" bind-ref='ref("m_password")'></input></div> 
   <div class="x-col" xid="col23">
    <a component="$UI/system/components/justep/button/button" class="btn btn-only-icon" label="delete" xid="button2" icon="icon-android-close">
     <i xid="i2" class="icon-android-close"></i>
     <span xid="span15">delete</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-only-icon" label="button" xid="button4" icon="icon-eye-disabled">
     <i xid="i4" class="icon-eye-disabled"></i>
     <span xid="span18"></span></a> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
   <div class="x-col" xid="col28"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
   <div class="x-col" xid="col31">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="购买" xid="button3" style="width:100%;height:100%;">
     <i xid="i3"></i>
     <span xid="span17">购买</span></a> </div> </div></li></ul> </div></li></ul> </div>
  </div>
  </div> 
</div>