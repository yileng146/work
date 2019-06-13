function search_lesson()
{
	var lesson_name=document.getElementById("lesson_name").value;
	console.log("lesson_name="+lesson_name);
	var lessonJsonObj={"lesson_name":lesson_name};
mui.ajax('http://localhost:8887/headphone_net/servlet/lessonservlet?para=search_lesson_pc',{
	data:lessonJsonObj,
	dataType:'json',//服务器返回json格式数据
	type:'post',//HTTP请求类型
	timeout:0,//超时时间设置为10秒；
	headers:{'Content-Type':'application/json'},           
	success:function(data){
		//服务器返回响应，根据响应结果，分析是否登录成功	
		display(data);
		
	},
	error:function(xhr,type,errorThrown){
		//异常处理；
		console.log(type);
	}
	
});
}
function display(json_array){
	var lessontable=document.getElementById("lessontable");
	for(var i=0;i<json_array.length;i++)
	{
		var json_obj=json_array[i];
		var json_str=JSON.stringify(json_obj);
		console.log("jsonstr="+json_str);
		var lesson_id=json_obj.lesson_id;
		var lesson_name=json_obj.lesson_name;
		var lesson_class=json_obj.lesson_class;
		var lesson_author=json_obj.lesson_author;
		var lesson_price=json_obj.lesson_price;
		var lesson_time=json_obj.lesson_time;
		
		var tr=document.createElement("tr");
		var td1=document.createElement("td");
		var td2=document.createElement("td");
		var td3=document.createElement("td");
		var td4=document.createElement("td");	
		var td5=document.createElement("td");
		var td6=document.createElement("td");
		var td7=document.createElement("td");

		td1.innerHTML=lesson_id;
		td2.innerHTML=lesson_name;
		td3.innerHTML=lesson_class;
		td4.innerHTML=lesson_author;
		td5.innerHTML=lesson_price;
		td6.innerHTML=lesson_time;
		td7.innerHTML='<a href="#">修改</a>'+'<a href="#">删除</a>'
		
		tr.appendChild(td1);
		tr.appendChild(td2);
		tr.appendChild(td3);
		tr.appendChild(td4);
		tr.appendChild(td5);
		tr.appendChild(td6);
		tr.appendChild(td7);
		lessontable.appendChild(tr);

 
	}
}



















