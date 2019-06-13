<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:454px;left:455px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="user_inf" onCustomRefresh="user_infCustomRefresh" idColumn="u_id"><column name="u_id" type="String" xid="xid1"></column>
  <column name="u_password" type="String" xid="xid2"></column>
  <column name="p_id" type="String" xid="xid3"></column>
  <column name="u_blance" type="Float" xid="xid4"></column>
  <column name="u_in" type="Float" xid="xid5"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="user_info" queryAction="queryUser_inf" saveAction="saveUser_inf" url="/jpush/copy/finally" tableName="user_inf" idColumn="user_id"><column label="user_balance" name="user_balance" type="Integer" xid="default1"></column>
  <column label="user_password" name="user_password" type="String" xid="default2"></column>
  <column label="user_id" name="user_id" type="Integer" xid="default3"></column></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog3" src="$UI/finally/finance/financeIO.w"></span><div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-content" xid="content2">
    
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="background-color:#48A4FF;height:25%;">
   <div class="x-col x-col-center" xid="col8">
    <div component="$UI/system/components/justep/row/row" class="x-row center-block" xid="row4" style="height:50%;display:block;">
     <div class="x-col" xid="col11">
   <span xid="span3" class="center-block"  style="color:#FFFFFF;text-align:center;font-size:x-large;height:37px;"><![CDATA[资产总额]]></span>
   </div></div> 
    
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="height:50%;">
   <div class="x-col" xid="col40">
    
    <div class="x-col" xid="div1" style="height:68px;"><span xid="span5" style="width:98px;text-align:center;font-size:xx-large;height:48px;" class="center-block" bind-text='$model.user_inf.val("u_blance")'><![CDATA[]]></span></div></div> </div></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="height:20%;">
   <div class="x-col" xid="col41"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row15">
   <div class="x-col" xid="col45"><![CDATA[]]>
  <span xid="span8"><![CDATA[可用余额]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row16">
   <div class="x-col" xid="col48"><span xid="span9" bind-text='$model.user_info.ref("user_balance")'><![CDATA[]]></span></div>
   </div></div>
   <div class="x-col" xid="col42"></div>
   <div class="x-col x-col-fixed x-col-center" xid="col43" style="width:40%;">
  <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-lg pull-right center-block" label="提现" xid="deposit_btn" style="font-size:large;width:98px;" onClick="deposit_btnClick">
   <i xid="i1"></i>
   <span xid="span6">提现</span></a></div>
  <div class="x-col x-col-center" xid="col53"><a component="$UI/system/components/justep/button/button" class="btn x-orange btn-lg pull-right center-block" label="充值" xid="top-up" style="font-size:large;width:98px;" onClick="top_upClick">
   <i xid="i2"></i>
   <span xid="span7">充值</span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18">
   <div class="x-col" xid="col55"></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row19" style="height:40%;">
   <div class="x-col" xid="col57"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row20" style="border-top-style:groove;color:gray;">
   <div class="x-col x-col-fixed x-col-center" xid="col61" style="width:10%;"><a component="$UI/system/components/justep/button/button" class="btn btn-only-icon center-block" label="button" xid="button1" icon="linear linear-calendarfull" style="font-size:x-large;">
   <i xid="i3" class="linear linear-calendarfull"></i>
   <span xid="span1"></span></a></div>
   <div class="x-col" xid="col62" style="border-bottom-style:groove;color:gray;"><span xid="span10" style="font-size:x-large;width:123px;height:37px;">资金记录</span>
  <a component="$UI/system/components/justep/button/button" class="btn btn-sm btn-only-icon pull-right" label="button" xid="financeIO" icon="linear linear-chevronright" style="height:39px;font-size:large;" onClick="financeIOClick">
   <i xid="i5" class="linear linear-chevronright"></i>
   <span xid="span14"></span></a></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row21" style="border-bottom-style:groove;color:gray;">
   <div class="x-col x-col-fixed x-col-center" xid="col64" style="background-color:transparent;width:10%;"><a component="$UI/system/components/justep/button/button" class="btn btn-only-icon center-block" label="button" xid="button2" icon="linear linear-users" style="font-size:x-large;">
   <i xid="i4" class="linear linear-users"></i>
   <span xid="span2"></span></a></div>
   <div class="x-col" xid="col65"><span xid="span11" style="font-size:x-large;width:123px;height:40px;"><![CDATA[交易密码]]></span></div>
   <div class="x-col x-col-fixed x-col-center" xid="col66" style="width:60%;"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" style="text-align:center;width:191px;"></input></div></div></div>
   </div></div> 
   <div class="x-panel-bottom" xid="bottom1"></div></div></div>
  </div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog2" src="$UI/finally/finance/withdraw.w"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="$UI/finally/finance/top-up.w"></span></div>