<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:255px;left:271px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsData" onCustomRefresh="goodsDataCustomRefresh" idColumn="id"><column label="ID" name="id" type="String" xid="xid1"></column>
  <column label="图片" name="fImg" type="String" xid="xid2"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content2"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="微店动态" style="background-color:#800000;">
   <div class="x-titlebar-left" xid="left1"></div>
   <div class="x-titlebar-title" xid="title1">微店动态</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content  x-scroll-view" xid="content6" _xid="C728D7DB18600001738FE560190711A0" style="bottom: 0px;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="goodsData">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2"><img src="" alt="" xid="image1" bind-attr-src=' val("fImg")' style="width:100%;"></img></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span6">加载更多...</span></div> </div></div>
   </div></div>
  <div class="x-contents-content" xid="content3"></div>
  <div class="x-contents-content" xid="content4"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer1" src="rootClass.w"></div></div>
  <div class="x-contents-content" xid="content5"></div>
  <div class="x-contents-content" xid="cart"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer2" src="$UI/demo/microshop/microshop/cart.w"></div></div></div></div>
   <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" selected="dynBtn"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="动态" xid="dynBtn" icon="icon-android-star" target="content2">
   <i xid="i2" class="icon-android-star"></i>
   <span xid="span2">动态</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="同城" xid="button3" icon="icon-ios7-location-outline" target="content3">
   <i xid="i3" class="icon-ios7-location-outline"></i>
   <span xid="span3">同城</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="搜索" xid="button4" icon="icon-android-search" target="content4">
   <i xid="i4" class="icon-android-search"></i>
   <span xid="span4">搜索</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="购物车" xid="button1" icon="icon-bag" target="cart">
   <i xid="i6" class="icon-bag"></i>
   <span xid="span7">购物车</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="我的" xid="button5" icon="icon-android-contact" target="content5">
   <i xid="i5" class="icon-android-contact"></i>
   <span xid="span5">我的</span></a></div></div></div></div>