<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:282px;left:738px;"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="user_action" queryAction="queryUse_log" saveAction="saveUse_log" url="/jpush/copy/finally" tableName="use_log" idColumn="use_id">
   <column label="use_id" name="use_id" type="Integer" xid="default6"></column>
   <column label="use_class" name="use_class" type="String" xid="default7"></column>
   <column label="use_detail" name="use_detail" type="String" xid="default8"></column>
   <column label="out_num" name="out_num" type="Float" xid="default9"></column>
   <column label="create_time" name="create_time" type="Date" xid="default10"></column></div><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="user_inf" queryAction="queryUser_inf" saveAction="saveUser_inf" url="/jpush/copy/finally" tableName="user_inf" idColumn="user_id">
   <column label="user_balance" name="user_balance" type="Integer" xid="default14"></column>
   <column label="user_password" name="user_password" type="String" xid="default15"></column>
   <column label="user_id" name="user_id" type="Integer" xid="default16"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="资金记录"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">资金记录</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><![CDATA[]]>
  <span xid="span2" style="font-size:x-large;"><![CDATA[可用余额：]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4"><span xid="span1" bind-text='$model.user_inf.val("user_balance")+".00元"' style="color:#FF0080;font-size:large;"></span></div>
   </div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="user_action">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col9" style="border-left-style:groove;"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col10" bind-style="{'color': val(&quot;m_Type&quot;) =='收入'?'green':'red'}" style="border-left-style:groove;"><span xid="span8" bind-text='val("use_class")+"记录"' style="font-size:large;color:#004080;"></span></div>
   <div class="x-col" xid="col11"><a component="$UI/system/components/justep/button/button" class="btn btn-xs btn-icon-bottom btn-block center-block" label="+" xid="button1" bind-text=" val(&quot;use_class&quot;)=='充值'?'+':'-'" style="font-size:xx-large;width:39px;color:#00FFFF;height:63px;">
   <i xid="i1"></i>
   <span xid="span5">+</span></a>
  <span xid="span4" bind-text=' val("out_num")' style="font-size:xx-large;color:#8000FF;" bind-style="{'color':  val(&quot;use_class&quot;) =='充值'?'green':'red'}"></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col13" style="border-left-style:groove;"><span xid="span6"></span>
  <span xid="span9" bind-text='val("use_detail")' style="color:#00FFFF;font-size:x-large;"></span></div>
   </div>
  <hr xid="hr1"></hr></li></ul> </div>
  </div>
  </div> 
</div>