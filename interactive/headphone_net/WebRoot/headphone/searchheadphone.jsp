<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@page import="com.head_phone.beans.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>查找耳机</title>
		<link rel="stylesheet" type="text/css" href="../css/headphone/addheadphone.css"/>
	</head>
	<body>
		<div id="all">
			<div id="top">
				
			</div>
			<div id="nav">
				
			</div>
			<div id="main">
			
			 <form action="../servlet/headphoneservlet?para=search" method="post">
				<table>
					<caption>
						<input type="text" name="headphone_name" id="headphone_name"  />
                         <input type="submit" value="查询" />
                        				
					</caption>
					
					<tr>
					<th>耳机序号</th>
					<th>耳机名称</th>
					<th>耳机价格</th>
					<th>耳机分类</th>
					<th>修改/删除</th>
					</tr>
					<% 
					ArrayList<Headphone>headphonelist=(ArrayList<Headphone>)request.getAttribute("headphonelist");
					if(headphonelist!=null){
					for(int i=0;i<headphonelist.size();i++)
					{
						Headphone headphone=headphonelist.get(i);
						int headphone_id=headphone.getHeadphone_id();
						String headphone_name=headphone.getHeadphone_name();
						float headphone_price=headphone.getHeadphone_price();
						String headphone_class=headphone.getHeadphone_class();
					
					%>
					<tr>
					<td><%=headphone_id %></td>
					<td><%=headphone_name %></td>
					<td><%=headphone_price %></td>
					<td><%=headphone_class %></td>
					<td>
					<a href="../servlet/headphoneservlet?para=modify1&headphone_id=<%=headphone_id %>">修改</a>
					<a href="../servlet/headphoneservlet?para=delete&headphone_id=<%=headphone_id %>">删除</a>
					</td>
					</tr>
					<% 
					}
					}
					%>
				</table>
			</form>
			</div>
			<a href="http://localhost:8887/headphone_net/headphone/index.jsp">
		    <button>返回首页</button>	
			<div id="foot">
				Copyright@YL
			</div>
		</div>
	</body>
</html>