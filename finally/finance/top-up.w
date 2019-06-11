<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:24px;left:755px;"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="user_information" queryAction="queryUser_inf" saveAction="saveUser_inf" url="/jpush/copy/finally" tableName="user_inf" idColumn="user_id"><column label="user_balance" name="user_balance" type="Integer" xid="default1"></column>
  <column label="user_password" name="user_password" type="String" xid="default2"></column>
  <column label="user_id" name="user_id" type="Integer" xid="default3"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="快捷充值"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="返回" class="btn btn-link" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span>返回</span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">快捷充值</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="user_information">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><span xid="span1"><![CDATA[账户余额：]]></span>
  <span xid="span2" bind-text='$model.user_information.ref("user_balance")'></span>
  <span xid="span3"><![CDATA[元]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-fixed x-col-center" xid="col2" style="width:30%;"><img src="$UI/finally/finance/img/chinabank.png" alt="" xid="image1" class="pull-right" style="width:60px;height:56px;"></img></div><div class="x-col" xid="col4">
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   </div><span xid="span5" style="font-size:x-large;text-align:center;display:block;width:107px;height:39px;"><![CDATA[中国银行]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col5"></div>
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col x-col-fixed x-col-center center-block" xid="col15" style="width:5%;">
    <span xid="span6">金额
  </span></div> 
   <div class="x-col x-col-fixed" xid="col16">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input4" style="width:830px;height:49px;"></input></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col x-col-fixed x-col-center center-block" xid="col20" style="width:5%;">
    <span xid="span8">密码</span></div> 
   <div class="x-col x-col-fixed" xid="col19">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right" label="button" xid="button1" icon="icon-eye-disabled" style="font-size:xx-large;">
     <i xid="i1" class="icon-eye-disabled"></i>
     <span xid="span4"></span></a>
  <input component="$UI/system/components/justep/input/input" class="form-control" xid="input3" placeholder="理财账户交易密码" style="width:830px;height:46px;"></input></div> 
  </div></li></ul> </div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="充值" xid="button2" style="width:100%;font-size:large;" onClick="button2Click">
   <i xid="i2"></i>
   <span xid="span9">充值</span></a>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="height:20%;">
   <div class="x-col" xid="col22">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
   <div class="x-col" xid="col10"></div></div><span xid="span10" style="width:78px;color:#C0C0C0;"><![CDATA[预计两小时内到账]]></span></div></div>
  </div>
  </div> 
</div>