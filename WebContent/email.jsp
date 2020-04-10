<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证电子邮箱</title>
<script type="text/javascript">
			function checkEmail() {
				// var email = document.registerForm.email.value;
				var email = document.getElementById("email").value;
				if (email == "") {
					alert("邮箱不能为空");
					return false;
				}
				if (email.indexOf("@") == -1 || email.indexOf(".") == -1) {
					alert("邮箱必须包含@和.符号");
					return false;
				}
				return true;
			}
</script>
</head>
<body>
<form action="验证电子邮箱.html" method="post">
			<table>
				<tr>
					<td>电子邮箱：</td>
					<td>
						<input name="email" type="text" size="24" id="email" />（必须包含 @ 和.字符）
					</td>
				</tr>
				<tr>
					<td>性别：</td>
					<td>
						<input name="gen" style="border:0px;" type="radio" value="男" checked="checked" />
						<img src="images/Male.gif" width="23" height="21" alt="alt" />男&nbsp;
						<input name="gen" style="border:0px;" type="radio" value="女" class="input" />
						<img src="images/Female.gif" width="23" height="21" alt="alt" />女
					</td>
				</tr>
				<tr>
					<td>头像：</td>
					<td>
						<input type="file" />
					</td>
				</tr>
				<tr>
					<td>爱好：</td>
					<td>
						<label>
							<input type="checkbox" name="checkbox" value="checkbox" />
						</label>
						运动&nbsp;&nbsp;
						<label>
							<input type="checkbox" name="checkbox2" value="checkbox" />
						</label>
						聊天&nbsp;&nbsp;
						<label>
							<input type="checkbox" name="checkbox3" value="checkbox" />
						</label>
						玩游戏
					</td>
				</tr>
				<tr>
					<td>出生日期：</td>
					<td>
						<input name="nYear" class="reg_text n4" id="nYear" value="yyyy" maxlength="4" onfocus="clearValue(this);" />&nbsp;年&nbsp;&nbsp;
						<select name="nMonth">
							<option value="" selected="selected">[选择月份]</option>
							<option value="0">一月</option>
							<option value="1">二月</option>
							<option value="2">三月</option>
							<option value="3">四月</option>
							<option value="4">五月</option>
							<option value="5">六月</option>
							<option value="6">七月</option>
							<option value="7">八月</option>
							<option value="8">九月</option>
							<option value="9">十月</option>
							<option value="10">十一月</option>
							<option value="11">十二月</option>
						</select>&nbsp;月&nbsp;&nbsp;
						<input name="nDay" class="reg_text n4" value="dd" size="2" maxlength="2" onfocus="clearValue(this);" />日
						<span class="red"></span></td>
				</tr>
				<tr>
					<td>&nbsp;
					</td>
					<td>
						<input type="image" name="Button" style="border:0px;" src="images/submit.gif" onclick="checkEmail();" /> 
						<img src="images/reset.gif" />
					</td>
				</tr>
			</table>
		</form>
</body>
</html>