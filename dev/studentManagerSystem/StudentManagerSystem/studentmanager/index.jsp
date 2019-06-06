<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@page import="com.head_phone.beans.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>学生管理系统</title>
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
			<a href="http://localhost:8887/headphone_net/studentmanager/addStudent.jsp">
		    添加学生
			</a>
			<a href="http://localhost:8887/headphone_net/studentmanager/searchStudent.jsp">
		   学生查询及修改删除
			</a>
			<div id="foot">
				Copyright@YL
			</div>
		</div>
	</body>
</html>