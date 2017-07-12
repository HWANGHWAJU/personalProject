<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="dao.*"
    import="dto.*"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String sex = request.getParameter("gender");
	String birth = request.getParameter("birth");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String postcode = request.getParameter("postcode");
	String roadAddress = request.getParameter("roadAddress");
	String jibunAddress = request.getParameter("jibunAddress");
	
	memberDAO dao = new memberDAO();
	memberDTO dto = new memberDTO(id,pw,name,sex,birth,email,phone,postcode,roadAddress, jibunAddress);
	
	boolean done = dao.insertShop(dto);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<% if(done){ %>
<script>
alert("회원가입 되었습니다");
</script>
<%response.sendRedirect("MainIndex.jsp?page=LoginPage.jsp");	
}else{ %>
<script>
alert("회원가입에 실패하였습니다.");	
</script>
<%response.sendRedirect("MainIndex.jsp?page=JoinPage.jsp");
} %>
</body>
</html>