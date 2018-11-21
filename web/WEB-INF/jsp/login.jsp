<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>用户登录</title>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/style.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/function.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
</head>
<body>
<div id="header" class="wrap">
</div>
<div id="regLogin" class="wrap">
	<div class="dialog">
		<div class="box">
			<h4>用户登录</h4>
			<form id="myForm" action="login" method="post">
				<div class="infos">
					<table class="field">					
						<tr>
							<td class="field">用 户 名：</td>
							<td>
								<input type="text" name="unick" class="text" />
							</td>
						</tr>
						<tr>
							<td class="field">密　　码：</td>
							<td><input type="password" class="text" name="upwd" />
							</td>
						</tr>
						
					</table>
					<div class="buttons">
                        <a href="toRegsiter"><input type='button' value='注册' /></a>
						<input type="submit" value="立即登陆"  />
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>


