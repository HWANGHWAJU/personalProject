<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="dao.*"
	import="dto.*"
%>
<%
	HttpSession sess = request.getSession();
	request.setCharacterEncoding("utf-8");
	
	userDTO user = (userDTO)sess.getAttribute("loginUser");
	request.getSession().setAttribute("loginUser", user);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<link href="css/table.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="space"></div>
<div class="space"></div>
<div class="board">

	<table align="center" class="qaboard" width="400px" style="border:1px dotted;">
		<tr>
			<th>아이디</th>
			<td><%=user.getM_id() %></td>
			<td rowspan="2"><a href="#this" style="font-size:15px;" onclick="mypageCh('<%=user.getM_pw()%>');">확인</a></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" id="pw"></td>
		</tr>
	</table>
</div>
<script>
function mypageCh(pw){
	var inputpw = document.getElementById('pw').value;
	var originpw = pw;
	alert("inputpw :"+inputpw +"    originpw :"+originpw);
	if(inputpw == originpw){
		location.href="MyPage.jsp?mypage=Info.jsp";
	}
}
</script>
</body>
</html>