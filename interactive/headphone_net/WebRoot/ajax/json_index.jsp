<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@page import="com.head_phone.beans.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>ajax图片轮播</title>
		<link rel="stylesheet" href="../css/ajax/ajax_index.css" />
	</head>
	<body>
		<div id="all">
			<div id="left">
				<header>
					图片轮播
				</header>
				<section>
					<img id="imgid" src="../img/ajax/1.jpg" />
				</section>
				<footer>
					<label id="num1">1</label>
					<label id="num2">2</label>
					<label id="num3">3</label>
					<label id="num4">4</label>
					<label id="num5">5</label>
					<label id="num6">6</label>
					<label id="num7">7</label>
				</footer>
			</div>
			<div id="right">
				<div id="right_top">
					<form id="ordinary_form" method="post">
						<ul>
							<li>
								<label>用户名：</label>
								<span><input type="text" name="user_name" id="user_name"/></span>
							</li>
							<li>
								<label>密码：</label>
								<span><input type="text" name="user_pwd" id="user_pwd" /></span>
							</li>
							<li>
								<input  class="btn"  type="button" onclick="ordinary_submit()"  value="普通提交"/>
								<input  class="btn"  type="reset"  value="重新填写"/>
							</li>
						</ul>
						
					</form>
				</div>
				<div id="right_bottom">
					<ul>
							<li>
								<label>用户名：</label>
								<span><input type="text" name="user_name" id="user_name"/></span>
							</li>
							<li>
								<label>密码：</label>
								<span><input type="text" name="user_pwd" id="user_pwd"/></span>
							</li>
							<li>
								<input  class="btn" type="button"  value="ajax提交"/>
								<input  class="btn"  type="reset"  value="重新填写"/>
							</li>
						</ul>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="../js/ajax/ajax_index.js" ></script>
	</body>
</html>

