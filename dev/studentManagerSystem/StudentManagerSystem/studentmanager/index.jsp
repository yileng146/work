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
	
	</head>
	<body>
		<div id="all">
			<div id="top">
			</div>
			<div id="nav">
			</div>
			<div id="main">
			<a href="addStudent.jsp">
		    添加学生
			</a>
			<a href="searchStudent.jsp">
		   学生查询及修改删除
			</a>
			
		</div>
		<div id="foot">
				Copyright@陈锐旺
			</div>
	</body>
</html>