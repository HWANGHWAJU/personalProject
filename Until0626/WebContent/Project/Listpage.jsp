<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ page import="dao.*"
		 import="dto.*" 
		 import="service.*"
%>

<%
	request.setCharacterEncoding("utf-8");
	
	int pageNo = 1;
	
	QlistService qlist = new QlistService();
	String pageNoVal = request.getParameter("pageNo");
	
	if(pageNoVal != null){
		pageNo = Integer.parseInt(pageNoVal);
	}
	
	QlistPaging qpage = qlist.getQlist(pageNo);
	
	request.getSession().setAttribute("qPage",qpage);
	response.sendRedirect(request.getContextPath()+"/project/QandA.jsp");
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