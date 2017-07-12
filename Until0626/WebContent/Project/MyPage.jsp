<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="dao.*"
	import="dto.*"
%>
<% 
	HttpSession sess = request.getSession();
	request.setCharacterEncoding("utf-8");
	
	userDTO user = (userDTO)sess.getAttribute("loginUser");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="css/table.css" rel="stylesheet">
<%@ include file="include/include-header.jsp" %>
</head>
<body>
<div class="Allbody">
<div class="head">
<jsp:include page="include-head.jsp"/>
</div>

<div class="main">
	<div class="container">
	<div class="space"></div>
	<p style="text-align: center;">My Page</p>
		<center><hr></center>
		<div class="space"></div>
		
		<%
			String pageindex = (String)request.getParameter("mypage");
			if(pageindex == null) { pageindex = "mypagePW.jsp"; }
		%>
		<div class="board">
			<jsp:include page="<%=pageindex %>"/>
		</div>
	</div><!-- container -->
</div><!-- main -->

<div class="foot">
<jsp:include page="include/include-foot.jsp"/>
</div><!-- foot -->

</div><!-- allbody -->
</body>
</html>