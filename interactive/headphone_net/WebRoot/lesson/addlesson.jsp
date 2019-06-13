<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@page import="com.head_phone.beans.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加课程</title>
		<link rel="stylesheet" type="text/css" href="../css/lesson/addlesson.css"/>
	</head>
	<body>
		<div id="all">
			<div id="top">
				
			</div>
			<div id="nav">
				
			</div>
			<div id="main">
				<table>
					<caption>添加课程</caption>
					<tr>
						<td>课程名称</td>
						<td><input type="text" name="lesson_name" id="lesson_name"  /></td>
					</tr>
					<tr>
						<td>课程价格</td>
						<td><input type="text" name="lesson_price" id="lesson_price"  /></td>
					</tr>
					<tr>
						<td>课程分类</td>
						<td><input type="text" name="lesson_class" id="lesson_class"  /></td>
					</tr>
					<tr>
						<td>课程作者</td>
						<td><input type="text" name="lesson_author" id="lesson_author"  /></td>
					</tr>
					<tr>
						<td>课程简介</td>
						<script type="text/plain" id="lessonsEditor">
							
						</script>
					</tr>
					
				</table>
				<div id="button">
				<input class="btstyle" type="button" onclick="add_lesson()" value="提交" />
				<input class="btstyle" type="reset"  value="重写" />
				</div>
			</div>
			<div id="foot">
				Copyright@YL
			</div>
		</div>
		
		<script src="../js/mui.js"type="text/javascript" charset="UTF-8"></script>
		<script src="../js/mui.min.js"type="text/javascript" charset="UTF-8"></script>
		<script src="../utf8-jsp/ueditor.config.js" type="text/javascript" charset="UTF-8"></script>
		<script src="../utf8-jsp/ueditor.all.js" type="text/javascript" charset="UTF-8"></script>
		<script src="../js/lesson/addlesson.js" type="text/javascript" charset="UTF-8"></script>
		


	</body>
</html>
    