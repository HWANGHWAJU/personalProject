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
	String newpostcode = request.getParameter("newpostcode");
	String newroadAddress = request.getParameter("newroadAddress");
	String newjibunAddress = request.getParameter("newjibunAddress");
	
	memberDAO dao = new memberDAO();
	memberDTO dto = new memberDTO(id,pw,name,sex,birth,email,phone,newpostcode,newroadAddress, newjibunAddress);
	memberDTO newdto = dao.updateMem(dto);
	
	userDTO user = dao.loginM(newdto.getM_id(), newdto.getM_pw());
	request.getSession().setAttribute("loginUser",user);

	response.sendRedirect("MyPage.jsp?pageindex=Info.jsp");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>