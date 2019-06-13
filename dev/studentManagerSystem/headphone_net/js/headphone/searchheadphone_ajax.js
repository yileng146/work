

function searchheadphone_ajax() {
	var headphone_name=document.getElementById("headphone_name").value;
	var xmlHttp;
	if (window.XMLHttpRequest) {
		xmlHttp=new XMLHttpRequest();
	}else {
		xmlHttp=new ActiveXObject();
	}
	xmlHttp.onreadyStatechange=function()
	{
		var readystate=xmlHttp.readState;
		alert("readystate="+readystate);
		if (xmlHttp.readState==4 &&xmlHttp.status==200) {
			var msg=xmlHttp.responseText;
			console.log("服务器返回msg="+msg);
		}
	}
	
	xmlHttp.open("post","./../servlet/headphoneservlet?para=searchheadphone_ajax","true");
	
    xmlHttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xmlHttp.send("headphone_name="+headphone_name);
	
}