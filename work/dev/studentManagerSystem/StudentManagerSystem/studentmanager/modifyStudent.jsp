<%@page import="com.head_phone.beans.Headphone"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加学生</title>
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
				<%
				Headphone headphone=(Headphone)request.getAttribute("headphone");
				int headphone_id=headphone.getHeadphone_id();
				String headphone_name=headphone.getHeadphone_name();
				float headphone_price=headphone.getHeadphone_price();
				String headphone_class=headphone.getHeadphone_class();
				%>
					<caption>修改学生</caption>
					
					<tr>
						<td>学生编号</td>
						<td><input type="text" name="headphone_id" id="headphone_id" value="<%=headphone_id%>" readonly="readonly" /></td>
					</tr>
					<tr>
						<td>学生名称</td>
						<td><input type="text" name="headphone_name" id="headphone_name" value="<%=headphone_name%>" /></td>
					</tr>
					<tr>
						<td>学生年龄</td>
						<td><input type="text" name="headphone_price" id="headphone_price" value="<%=headphone_price%>" /></td>
					</tr>
					<tr>
						<td>学生地址</td>
						<td><input type="text" name="headphone_class" id="headphone_class" value="<%=headphone_class%>" /></td>
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
    