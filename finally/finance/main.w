<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="width:445px;height:auto;top:201px;left:190px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="finance_products" idColumn="p_id" onCustomRefresh="finance_productsCustomRefresh">
   <column  name="p_id" type="Integer" xid="xid1"></column>
  <column name="p_yuqishouyi" type="Float" xid="xid2"></column>
  <column name="p_qixian" type="Integer" xid="xid3"></column>
  <column name="p_rongziguimo" type="Integer" xid="xid4"></column>
  <column name="p_time" type="Date" xid="xid5"></column>
  <column name="p_salenum" type="Integer" xid="xid6"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-content" xid="content1">
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content2"><div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel2"> 
    <div class="x-panel-top" xid="top2"> 
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
          <div class="x-titlebar-title"><![CDATA[首页推荐]]></div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
      <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="finance_products" bind-click="list1Click">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-fixed pull-left" xid="col1"><span xid="span1" bind-text='val("p_id")' style="color:#800080;"></span></div>
   <div class="x-col x-col-25" xid="col3"><span xid="span3" bind-text='val("p_time")'></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col x-col-center" xid="col7" style="border-right-style:groove;"><span xid="span4" bind-text='val("p_yuqishouyi")' style="font-size:large;color:#FF8000;"></span>
  <span xid="span8" style="font-size:x-small;"><![CDATA[%]]></span></div>
   <div class="x-col x-col-center" xid="col8" style="border-right-style:groove;"><span xid="span9" bind-text='val("p_qixian")' style="font-size:large;color:#0000FF;"></span><span xid="span10" style="font-size:x-small;"><![CDATA[天]]></span></div>
   <div class="x-col x-col-center" xid="col9"><span xid="span12" bind-text='val("p_rongziguimo")' style="font-size:large;color:#8000FF;"></span>
  <span xid="span13" style="font-size:x-small;color:#000000;"><![CDATA[万]]></span>
  </div>
  <div class="x-col x-col-center" xid="col10" bind-visible=' val("fRush") != val("fRushray")'></div>
  <div class="x-col" xid="col2"></div></div>
  
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col11" style="border-bottom-style:groove;"><span xid="span5"><![CDATA[预期收益率]]></span></div>
   <div class="x-col" xid="col12" style="border-bottom-style:groove;"><span xid="span6"><![CDATA[项目期限]]></span></div>
   <div class="x-col" xid="col13" style="border-bottom-style:groove;"><span xid="span7"><![CDATA[融资规模]]></span></div>
  <div class="x-col" xid="col14" style="border-bottom-style:groove;"><a component="$UI/system/components/justep/button/button" class="btn btn-default pull-right" xid="buy_btn" bind-style="{'background':val(&quot;p_salenum&quot;) &gt;=1?'orange':'gray'}" bind-disable=' val("p_salenum") ==0'>
   <i xid="i1"></i>
   <span xid="span2" bind-text=' val("p_salenum") &gt;=1?"抢购":"抢光了"' bind-style=" val(&quot;p_salenum&quot;) &gt;=1?'blue':'gray'"></span></a></div>
  <div class="x-col" xid="col4"></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <span xid="span15"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button3" icon="icon-android-social-user" style="background-color:#FFFFFF;height:35;width:35;font-size:large;">
   <i xid="i2" class="icon-android-social-user"></i>
   <span xid="span16"></span></a>
  <span xid="span17" bind-text='val("fPurchase")'></span>
  </span>
  <div class="x-col" xid="col5" style="border-bottom-style:groove;"><span xid="span11" bind-text=' "该产品剩余"+val("p_salenum") ' class="center-block" style="text-align:center;"></span></div>
  <div class="x-col" xid="col6" style="border-bottom-style:groove;"></div>
  <div class="x-col" xid="col15" style="border-bottom-style:groove;"></div>
  <div class="x-col" xid="col16" style="border-bottom-style:groove;"></div>
  <div class="x-col" xid="col17"></div></div></li></ul> </div>
  </div>
    
  </div> </div>
  <div class="x-contents-content" xid="finance_"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="finance" src="$UI/finally/finance/finance.w"></div></div>
  <div class="x-contents-content" xid="myaccount_"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="myaccount" src="$UI/finally/finance/myaccount.w"></div></div>
  <div class="x-contents-content" xid="aboutus"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer4" src="$UI/finally/finance/aboutus.w"></div></div></div></div>
  <div class="x-panel-bottom" xid="caidan"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs btn-icon-top" label="首页推荐" xid="shouye" icon="icon-home" target="content2">
    <i xid="i4" class="icon-home"></i>
    <span xid="span11">首页推荐</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs btn-icon-top" label="理财产品" xid="licai" icon="icon-android-storage" target="finance_">
    <i xid="i3" class="icon-android-storage"></i>
    <span xid="span2">理财产品</span></a> 
    
  
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs btn-icon-top" label="我的账户" xid="my" icon="icon-android-social-user" target="myaccount_">
   <i xid="i6" class="icon-android-social-user"></i>
   <span xid="span19">我的账户</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs btn-icon-top" label="关于我们" xid="guanyu" icon="icon-help-circled" target="aboutus">
   <i xid="i5" class="icon-help-circled"></i>
   <span xid="span18">关于我们</span></a></div></div></div> 
</div>