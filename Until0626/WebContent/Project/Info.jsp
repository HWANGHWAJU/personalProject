<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="dao.*"
	import="dto.*"
%>
<%
	HttpSession sess=request.getSession();
	request.setCharacterEncoding("utf-8");
	
	memberDAO dao = new memberDAO();
	userDTO user = (userDTO)sess.getAttribute("loginUser");
	memberDTO minfo = dao.selectMem(user);
	request.getSession().setAttribute("loginUser", user);
	request.getSession().setAttribute("memberInfo", minfo);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
table tr th{width:30%;}
</style>
</head>
<body>
<div>
<div class="space"></div>
<div class="space"></div>
<div class="board">
	<center>
		<table class="qaboard" width="500px;" style="table-layout: fixed;" border="1">
			<tr>
				<th>아이디</th>
				<td><%=minfo.getM_id() %></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<div id="orpw"><%=minfo.getM_pw()%></div>
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>
					<div id="orna"><%=minfo.getM_name() %></div>
				</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
					<div id="orge"><%=minfo.getM_gender() %></div>
				</td>
			</tr>
			<tr>
				<th>생일</th>
				<td>
				<div id="orbirth"><%=minfo.getM_birth() %></div>
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>
					<div id="oremail"><%=minfo.getM_email() %></div>
				</td>
			</tr>
			<tr><td height="30px;"></td></tr>
			<tr>
				<th>핸드폰 번호</th>
				<td>
				<div id="orphone"><%=minfo.getM_phone() %></div>
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td><%=minfo.getM_postcode() %> <%=minfo.getM_roadAddress() %>  <%=minfo.getM_jibunAddress() %></td>
			</tr>		
		</table>
		<div class="space"></div>
		<a href="MyPage.jsp?mypage=ModifyInfoform.jsp">회원 정보 변경하기</a>
	</center>
</div>
</div>
</body>
</html>