<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:59px;left:643px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="user_inf" idColumn="u_blance" onCustomRefresh="user_infCustomRefresh"><column name="u_blance" type="Integer" xid="xid4"></column></div></div>  
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
          <div class="x-titlebar-title"><![CDATA[提现]]></div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="user_inf">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><span xid="span1"><![CDATA[账户余额：]]></span>
  <span xid="span2" bind-text='val("u_blance")' style="color:#8000FF;font-size:medium;"></span>
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
    <input type="text" value="" xid="input2" style="width:88%;height:50px;" placeholder="免手续费" align="left"></input>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-label pull-right" label="全部提现" xid="button4" icon="icon-eye-disabled" style="font-size:large;">
   <i xid="i4" class="icon-eye-disabled"></i>
   <span xid="span11">全部提现</span></a></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col x-col-fixed x-col-center center-block" xid="col20" style="width:5%;">
    <span xid="span8">密码</span></div> 
   <div class="x-col x-col-fixed" xid="col19">
    <input type="text" value="" xid="input3" style="width:88%;height:47px;" placeholder="理财账户交易密码"></input>
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon pull-right" label="button" xid="button1" icon="icon-eye-disabled" style="font-size:xx-large;">
     <i xid="i1" class="icon-eye-disabled"></i>
     <span xid="span4"></span></a></div> 
  </div><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="提现" xid="button2" style="width:100%;font-size:large;">
   <i xid="i2"></i>
   <span xid="span9">提现</span></a></li></ul> </div>
  
  </div>
  </div> 
</div>