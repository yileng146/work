<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@page import="com.head_phone.beans.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<style type="text/css">
			table{
				width: 80%;
				height: 300px;
				border: 1px solid black;
				border-collapse: collapse;
				margin: auto;
			}
			table th{
				border: 1px solid black;
				text-align: center;
			}
			table td{
				border: 1px solid black;
				text-align: center;
			}
		</style>

	</head>
	<body>
		<table id="table"></table>
		<script type="text/javascript">
	var JSObj4 = {
	"arr": [11, 22, 33, 44],
	"booValue": true,
	"strMsg": "welcome to JSON!",
	"JsArr": [{"id":1,"name":"小明","age":14,"sex":"男"},
						{"id":2,"name":"小红","age":15,"sex":"女"},
						{"id":3,"name":"小绿","age":13,"sex":"男"},
						{"id":4,"name":"小黄","age":17,"sex":"女"}
	]
};
		var jsARR=JSObj4.JsArr;
		var table=document.getElementById("table");
		var tr=document.createElement("tr");
		table.appendChild(tr);
		var th1=document.createElement("th");
		var th2=document.createElement("th");
		var th3=document.createElement("th");
		var th4=document.createElement("th");
		th1.innerHTML="序号";
		th2.innerHTML="姓名";
		th3.innerHTML="年龄";
		th4.innerHTML="性别";
		tr.appendChild(th1);
		tr.appendChild(th2);
		tr.appendChild(th3);
		tr.appendChild(th4);	
		for(var i=0;i<jsARR.length;i++)
		{
			console.log(jsARR[i]);
			var tr0=document.createElement("tr");
			table.appendChild(tr0);
			var td1=document.createElement("td");
			var td2=document.createElement("td");
			var td3=document.createElement("td");
			var td4=document.createElement("td");
			var jsobj=jsARR[i];
			var id=jsobj.id;
			var name=jsobj.name;
			var age=jsobj.age;
			var sex=jsobj.sex;
			td1.innerHTML=id;
			td2.innerHTML=name;
			td3.innerHTML=age;
			td4.innerHTML=sex;
			tr0.appendChild(td1);
			tr0.appendChild(td2);
			tr0.appendChild(td3);
			tr0.appendChild(td4);
		}
		</script>
			<div id="backindex">
			<a href="http://localhost:8887/headphone_net/headphone/index.jsp">
		    <button>返回首页</button>
		    </div>
	</body>
</html>
