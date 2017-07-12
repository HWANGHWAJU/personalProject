<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
	import="dao.*"
	import="dto.*"    
%>
<%
	String id=request.getParameter("inputid");
	String pw = request.getParameter("inputpw");
	
	memberDAO mservice = new memberDAO();
	
	try{
		userDTO u = mservice.loginM(id, pw);
		
		if(u != null){
			request.getSession().setAttribute("loginUser",u);
			response.sendRedirect(request.getContextPath()+"/Project/MainIndex.jsp?");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
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