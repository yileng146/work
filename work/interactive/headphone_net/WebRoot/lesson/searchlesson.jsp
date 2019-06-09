<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@page import="com.head_phone.beans.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>查找课程</title>
		<link rel="stylesheet" type="text/css" href="../css/lesson/addlesson.css"/>
	</head>
	<body>
		<div id="all">
			<div id="top">
				
			</div>
			<div id="nav">
				
			</div>
			<div id="main">
			 <form >
				<table id="lessontable">
					<caption>
						<input type="text" name="lesson_name" id="lesson_name"  />
                         <input type="submit" value="查询课程" onclick="search_lesson()" />					
					</caption>
					<tr>
					<th>课程序号</th>
					<th>课程名称</th>
					<th>课程分类</th>
					<th>课程作者</th>
					<th>课程价格</th>
					<th>编辑时间</th>
					<th>修改/删除</th>
					</tr>
				</table>
			</form>
			</div>
			<a href="http://localhost:8887/headphone_net/headphone/index.jsp"></a>
		    <button>返回首页</button>
			<div id="foot">
				Copyright@YL
			</div>
		</div>
		<script src="../js/mui.js" charset="utf-8" type="text/javascript"></script>
		<script src="../js/mui.min.js"type="text/javascript" charset="UTF-8"></script>
		<script src="../js/lesson/searchlesson.js" charset="utf-8" type="text/javascript"></script>
	</body>
</html>