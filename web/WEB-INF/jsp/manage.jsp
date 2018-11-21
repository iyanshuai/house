<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>用户管理</title>
	<link type="text/css" rel="stylesheet" href="/statics/css/style.css" />
	<script type="text/javascript" src="/statics/js/function.js"></script>
</head>

<body>
<div id="header" class="wrap">
	<div id="logo"></div>
	<div class="search">
		<label class="ui-green"><input type="button" name="search" value="发布房屋信息" /></label>	
		<label class="ui-green"><input type="button" name="search" value="退       出" /></label>
	</div>
</div>
<div class="main wrap">
<div id="houseArea">
	<table class="house-list">
		<!-- 有房屋 -->
		<tr>
			<td class="house-thumb">
			<span>
				<img src="/statics/images/thumb_house.gif" />
			</span>
			</td>
			<td>
				<dl>
					<dt>
				<a href="#">sss</a>
				</dt>
					<dd>
						dddd   区，
						ddddd  街，
						10000    平米<br/>
						联系方式     ssss

					</dd>
				</dl>
			</td>
			<!-- 自己发布的信息有权限删除 -->
			<td class="house-type"><label class="ui-green">
				<input type="button"  name="search" value="修    改" /></label></td>
			<td class="house-price"><label class="ui-green">
				<input type="button" name="search" value="删    除" /></label></td>
			<!-- 不是自己发布的信息没有权限删除 
			<td colspan="2"></td>
			-->
		</tr>
	<!-- 无房屋 
	<tr>
		<td>无房屋信息输出</td>
	</tr>
	-->
	</table>
</div>
	<div class="pager">
		
		<ul>
			<li class="current">
				<a href="#">首页</a>
			</li>
			<li>
				<a href='#'>上一页</a>
			</li>
			<li>
				<a href='#'>下一页</a>
			</li>
			<li>
				<a href='#'>末页</a>
			</li>
		</ul>
		<span class="total">共 页</span>
	</div>
</div>
</body>
</html>
