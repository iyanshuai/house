<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>租房 - 首页</title>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/style.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/function.js"></script>
</head>
<body>
<div id="navbar" class="wrap">

	<dl class="search clearfix">
		<form>
			<dt>
				<ul>
					<li class="bold">房屋信息</li>
					<li>
						标题：<input type="text" class="text" value='' name="title" />
						<label class="ui-blue"><input type="button" onclick='doSearch()' name="search" value="搜索房屋" /></label>
					</li>
				</ul>
			</dt>
			<dd>
				<ul>
					<li class="first">
						价格
					</li>
					<li>
						<select name='price'>
							<option value=''>不限</option>
							<option value='0-100'>100元以下</option>
							<option value='100-200'>100元—200元</option>
							<option value='200-1000000'>200元以上</option>
						</select>
					</li>
				</ul>
			</dd>
			<dd>
				<ul>
					<li class="first">房屋位置</li>
					<li>
							<select name='street_id' id='street'>
								<option value=''>不限</option>
								<option value='1000'>知春路</option>
								<option value='1001'>中关村大街</option>
								<option value='1002'>学院路</option>
								<option value='1003'>朝阳路</option>								
							</select>
					</li>
				</ul>
			</dd>
			<dd>
				<ul>
					<li class="first">房型</li>
					<li>
							<select name='type_id'>
								<option value=''>不限</option>
								<option value='1000'>一室一厅</option>
								<option value='1001'>一室两厅</option>
								<option value='1002'>两室一厅</option>
								<option value='1003'>两室两厅</option>								
							</select>
					</li>
				</ul>
			</dd>
			<dd>
				<ul>
					<li class="first">
						面积
					</li>
					<li>
							<select name='floorage'>
								<option value=''>不限</option>
								<option value='0-40'>40以下</option>
								<option value='40-500'>40-500</option>
								<option value='500-1000000'>500以上</option>							
							</select>
					</li>
				</ul>
			</dd>
			<dd>
				<ul>
					<li class="first">
						开始时间
					</li>
					<li>
							<input type="text" name="beginTime" style="width:100px" />
					</li>
				</ul>
			</dd>
				<dd>
				<ul>
					<li class="first">
						结束时间
					</li>
					<li>
							<input type="text" name="endTime" style="width:100px" />
					</li>
				</ul>
			</dd>
		</form>
	</dl>
</div>
<div class="main wrap">
	<table class="house-list">
		<tr>
			<td class="house-thumb"><span>
				<img src="${pageContext.request.contextPath}/statics/images/thumb_house.gif" />
			</span>	</td>
			<td>
				<dl>
					<dt>
						<input type="text" />
					</dt>
					<dd>
						朝阳区
						三元街
						100平米<br/>
						联系方式：13678900987
					</dd>
				</dl>
			</td>
			<td class="house-type"> </td>
			<td class="house-price"><span> 100</span>元/月</td>
		</tr>

	</table>
	<div class="pager">
		<ul>
			<li class="current">
				<a href="#">首页</a>
			</li>
			<li>
				<a href='#'>上一页</a>
			</li>
			<li>
				<a href=''>下一页</a> 
			</li>
			<li>
				<a href='#'>末页</a>
			</li>
		</ul>
		<span class="total">1/10页</span>
	</div>
</div>
</body>
</html>