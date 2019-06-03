<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:365px;left:479px;" onParamsReceive="modelParamsReceive" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="threeClassData" idColumn="fID" onCustomRefresh="threeClassDataCustomRefresh"><column name="fID" type="String" xid="xid4"></column>
  <column name="fSecondID" type="String" xid="xid5"></column>
  <column name="fClassName" type="String" xid="xid6"></column>
  <column name="fImg" type="String" xid="xid7"></column></div><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="secondClassData" idColumn="fID" onCustomRefresh="secondClassDataCustomRefresh"><column name="fID" type="String" xid="xid1"></column>
  <column isCalculate="false" name="fRootID" type="String" xid="xid2"></column>
  <column name="fClassName" type="String" xid="xid3"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="标题"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">标题</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="secondClassData" filter=' $row.val("fRootID")==$model.params.rootID' bind-click="list3Click">
   <ul class="x-list-template" xid="listTemplateUl3">
    <li xid="li3" class="col-xs-3"><div class="media" xid="media2">
   <div class="media-top" xid="mediaLeft2">
    <a href="#" xid="a2">
     <img class="media-object" src="" alt="" xid="image3" bind-attr-src='$model.threeClassData.val("fImg")' style="width:40px;"></img></a> </div> 
   <div class="media-body" xid="mediaBody2">
    <h4 class="media-heading" xid="h42" bind-text='val("fClassName")'>Media heading</h4></div> </div></li></ul> </div></div>
  </div> 
</div>