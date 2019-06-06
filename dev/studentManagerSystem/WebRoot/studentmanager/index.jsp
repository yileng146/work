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
		<link rel="stylesheet" type="text/css" href="../css/headphone/index.css"/>
		<link rel="stylesheet" type="text/css" href="../css/headphone/indextable.css"/>
	</head>
	<body>
		<div id="all">
			<div id="top">
			</div>
			<div id="nav">
			</div>
			<div id="main">
			<a href="http://localhost:8887/headphone_net/headphone/addheadphone.jsp">
		    添加耳机
			</a>
			<a href="http://localhost:8887/headphone_net/headphone/searchheadphone.jsp">
		   耳机查询
			</a>
			<a href="http://localhost:8887/headphone_net/headphone/json.jsp">
		   json模块
		   </a>
			<a href=#>
		  待开发
			</a>
			<a href=#>
		   待开发
			</a>
			</div>
			<div id="foot">
				Copyright@YL
			</div>
		</div>
	</body>
</html>