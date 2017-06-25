<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<center>
		<div id="form">
			<div class="login">
				<div class="cover">
				<div class="loginform">
					<h2>Hello : )</h2>
					<div style="border-bottom:1px solid #636363;">
					<div class="space"></div>
					<form action="LoginRequest.jsp"method="post" id="loginform" name="loginform">
						<table width="100%">
							<tr>
								<td>ID</td>
								<td><input type="text" id="inputid" name="inputid"></td>
								<td rowspan="2"><a href="#" onclick="Submit();">LOGIN</a></td>
							</tr>
							<tr>
								<td>PASSWORD</td>
								<td><input type="password" id="inputpw" name="inputpw"></td>
							</tr>
						</table>
					</form>
					<div class="space"></div>
					</div>
					<div class="space"></div>
					<div class="find">
						<table>
							<tr>
								<td><p>· 아이디를 까먹어쏘 ㅇㅅㅇ? 나도 몰라</p></td>
								<td>&nbsp;<input type="button" id="findid" value="아이디 찾기"></td>
							</tr>
							<tr>
								<td><p>· 호에 비밀번호를 까먹어써어어어어 ㅇㅅㅇ??? 나도 몰라</p></td>
								<td>&nbsp;<input type="button" id="findpw" value="비밀 번호 찾기"></td>
						</table>
					</div>
				</div>
				
				<div class="loginimg">
				<img src="img/04.jpg" id="formimg"/>
				</div>
				</div><!-- cover -->
			</div><!-- login -->
		</div>
	</center>
</div>
<script type="text/javascript">
function Submit(){
	document.getElementById('loginform').submit();
}
</script>
</body>
</html>