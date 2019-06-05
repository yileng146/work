var ue=UE.getEditor('lessonsEditor');

function add_lesson(){
	
	var lesson_name=document.getElementById("lesson_name").value;
	var lesson_class=document.getElementById("lesson_class").value;
	var lesson_author=document.getElementById("lesson_author").value;
	var lesson_price=document.getElementById("lesson_price").value;
	var lesson_text=ue.getContent();
    var lessonJsonObj={
    	"lesson_name":lesson_name,
    	"lesson_class":lesson_class,
    	"lesson_author":lesson_author,
    	"lesson_price":lesson_price
    };
    console.log("lessonJsonObj="+lessonJsonObj);
	var lessonJsonStr=JSON.stringify(lessonJsonObj)
	console.log("lessonJsonStr="+lessonJsonStr);	
	mui.ajax('http://localhost:8887/headphone_net/servlet/lessonservlet?para=add_lesson_pc',{
		data:lessonJsonObj,
		dataType:'json',//服务器返回json格式数据
		type:'post',//HTTP请求类型
		timeout:0,//超时时间设置为5秒；
		headers:{'Content-Type':'application/json'},           
		success:function(data){
			//服务器返回响应，根据响应结果，分析是否登录成功；
			var value=data.msg;
			alert(value);
		},
		error:function(xhr,type,errorThrown){
			//异常处理；
			console.log(type);
			
		
		}
		
	});
}
