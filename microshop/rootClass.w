<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:217px;left:219px;height:auto;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="classData" idColumn="id" onCustomRefresh="classDataCustomRefresh"><column label="ID" name="id" type="String" xid="xid1"></column>
  <column label="分类" name="fClassName" type="String" xid="xid2"></column>
  <column label="图片" name="fImg" type="String" xid="xid3"></column>
  <column label="描述" name="fDescription" type="String" xid="xid4"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="搜索"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            </div>  
          <div class="x-titlebar-title">搜索
  </div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="classData" bind-click="list1Click">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="col-xs-6"><div class="media" xid="media1">
   <div class="media-left" xid="mediaLeft1">
    <a href="#" xid="a1">
     <img class="media-object" src="" alt="" xid="image1" bind-attr-src='val("fImg")' style="width:40px;"></img></a> </div> 
   <div class="media-body" xid="mediaBody1">
    <h4 class="media-heading" xid="h41" bind-text='val("fClassName")'>Media heading</h4>
  <span xid="span1" bind-text='val("fDescription")'></span></div> </div></li></ul> 
  </div></div>
  </div> 
</div>