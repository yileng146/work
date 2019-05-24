<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加耳机</title>
		<link rel="stylesheet" type="text/css" href="../css/headphone/addheadphone.css"/>
	</head>
	<body>
		<div id="all">
			<div id="top">
				
			</div>
			<div id="nav">
				
			</div>
			<div id="main">
			 <form action="../servlet/headphoneservlet?para=add" method="post">
				<table>
					<caption>添加手机</caption>
					<tr>
						<td>耳机名称</td>
						<td><input type="text" name="headphone_name" id="headphone_name"  /></td>
					</tr>
					<tr>
						<td>耳机价格</td>
						<td><input type="text" name="headphone_price" id="headphone_price"  /></td>
					</tr>
					<tr>
						<td>耳机分类</td>
						<td><input type="text" name="headphone_class" id="headphone_class"  /></td>
					</tr>
				</table>
				<div id="button">
				<input class="btstyle" type="submit"  value="提交" />
				<input class="btstyle" type="reset"  value="重写" />
				</div>
			</form>
			</div>
			<div id="backindex">
			<a href="http://localhost:8887/headphone_net/headphone/index.jsp">
		    <button>返回首页</button>
		    </div>
			<div id="foot">
				Copyright@YL
			</div>
		</div>
	</body>
</html>
    