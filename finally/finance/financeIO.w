<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:306px;left:433px;"> 
  </div>  
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
  <span xid="span2"><![CDATA[账户余额：]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4"><span xid="span1" bind-text='$model.recordData.val("m_balance")'></span></div>
   </div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="recordData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col9"><span xid="span3" bind-text='val("m_CreateTime")'></span>
  <span xid="span4"></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col10" bind-style="{'color': val(&quot;m_Type&quot;) =='收入'?'green':'red'}"><span xid="span8" bind-text='val("m_Class")'></span></div>
   <div class="x-col" xid="col11"><a component="$UI/system/components/justep/button/button" class="btn btn-xs btn-icon-bottom btn-block" label="+" xid="button1" bind-text="val(&quot;m_Type&quot;) =='收入'?'+':'-'" style="font-size:large;width:39px;height:39px;">
   <i xid="i1"></i>
   <span xid="span5">+</span></a><span xid="span7" bind-text='val("m_Money")' bind-style="{'color': val(&quot;m_Type&quot;) =='收入'?'green':'red'}"></span>
  </div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col13"><span xid="span6"></span>
  <span xid="span9" bind-text='val("m_Description")'></span></div>
   </div>
  <hr xid="hr1"></hr></li></ul> </div>
  </div>
  </div> 
</div>