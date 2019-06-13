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
			 <form >
				<table id="">
					<caption>
						<input type="text" name="headphone_name" id="headphone_name"  />
                         <input type="button" value="ajax查询" onclick="searchheadphone_ajax()" />					
					</caption>
					<tr>
					<th>耳机序号</th>
					<th>耳机名称</th>
					<th>耳机价格</th>
					<th>耳机分类</th>
					<th>修改/删除</th>
					</tr>
				</table>
			</form>
			</div>
			<a href="http://localhost:8887/headphone_net/headphone/index.jsp">
		    <button>返回首页</button>
			<div id="foot">
				Copyright@YL
			</div>
		</div>
		<script src="../js/headphone/searchheadphone_ajax.js" charset="utf-8" type="text/javascript">

</script>
	</body>
</html>