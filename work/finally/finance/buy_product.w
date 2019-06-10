<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:9px;left:794px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="finance_2" idColumn="p_id" onCustomRefresh="finance_2CustomRefresh">
   <column name="p_id" type="Integer" xid="xid1"></column>
  <column name="p_yuqishouyi" type="Float" xid="xid2"></column>
  <column name="p_qixian" type="Integer" xid="xid3"></column>
  <column name="p_rongziguimo" type="Integer" xid="xid4"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="user_info2" queryAction="queryUser_inf" saveAction="saveUser_inf" url="/jpush/copy/finally" tableName="user_inf" idColumn="user_id"><column label="user_balance" name="user_balance" type="Integer" xid="default1"></column>
  <column label="user_password" name="user_password" type="String" xid="default2"></column>
  <column label="user_id" name="user_id" type="Integer" xid="default3"></column></div></div>  
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
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" filter=' $row.val("p_id")==$model.params.p_id' data="finance_2">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><span xid="span1" style="font-size:x-small;color:#8000FF;" bind-text=' val("p_id")'></span>
  </div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4" style="width:10%;"><span xid="span3" style="font-size:xx-large;color:#FF8000;" bind-text='val("p_yuqishouyi")'></span>
  <span xid="span26"><![CDATA[%]]></span></div>
   <div class="x-col" xid="col26">
   <span xid="span24" bind-text='val("p_qixian")' style="color:#FF0080;font-size:xx-large;"></span>
  <span xid="span27"><![CDATA[天]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col7"><span xid="span7"><![CDATA[预期收益率]]></span></div>
   <div class="x-col" xid="col8"><span xid="span8"><![CDATA[项目期限]]></span></div>
  </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col12"><span xid="span9" bind-text=' val("p_yuqishouyi") *10000 +"元"' style="color:#8080C0;font-size:medium;"></span>
  </div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col15" style="font-size:small;">
   <span xid="span10">融资规模</span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col x-col-fixed x-col-center" xid="col2" style="width:10%;"><span xid="span13"><![CDATA[账户余额：]]></span></div>
   <div class="x-col" xid="col3"><span xid="span19" bind-text='$model.user_info2.ref("user_balance")' style="color:#FF8000;font-size:x-large;"><![CDATA[]]></span></div>
   <div class="x-col" xid="col6"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col" xid="col10"></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <li xid="li2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col" xid="col18">
    <span xid="span12"><![CDATA[投资金额：]]></span></div> 
   <div class="x-col x-col-80" xid="col20">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" valueUpdateMode="input" dataType="Float" bind-ref='"5000"'></input></div> 
   <div class="x-col" xid="col21">
    <a component="$UI/system/components/justep/button/button" class="btn" label="全投" xid="button1">
     <i xid="i1"></i>
     <span xid="span14">全投</span></a> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col" xid="col22">
    <span xid="span16">交易密码：</span></div> 
   <div class="x-col x-col-80" xid="col24">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" dataType="String" valueUpdateMode="input"></input></div> 
   <div class="x-col" xid="col23">
    <a component="$UI/system/components/justep/button/button" class="btn btn-only-icon" label="delete" xid="button2" icon="icon-android-close">
     <i xid="i2" class="icon-android-close"></i>
     <span xid="span15">delete</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-only-icon" label="button" xid="button4" icon="icon-eye-disabled">
     <i xid="i4" class="icon-eye-disabled"></i>
     <span xid="span18"></span></a> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
   <div class="x-col x-col-fixed x-col-center" xid="col28" style="width:10%;"><span xid="span20"><![CDATA[预期收益：]]></span></div>
  <div class="x-col" xid="col19"><span xid="span21" bind-text='val("p_yuqishouyi")*1000'></span></div>
  <div class="x-col" xid="col25"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
   <div class="x-col" xid="col31">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="购买" xid="button3" style="width:100%;height:100%;">
     <i xid="i3"></i>
     <span xid="span17">购买</span></a> </div> </div></li>
   </div></li>
  </ul> </div>
  </div>
  </div> 
</div>