<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="include/include-header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Main Index</title>
</head>
<body>
<div class="Allbody">

<div class="head">
<jsp:include page="include/include-head.jsp"/>
</div><!-- head -->

<div class="main">
<% 
	String selectPage =(String) request.getParameter("page");
	if ( selectPage == null ){	selectPage = "Menu1.jsp";	 }
%>
<jsp:include page="<%=selectPage %>"/>
</div><!-- main -->

<div class="foot">
<jsp:include page="include/include-foot.jsp"/>
</div><!-- foot -->

</div><!-- Allbody -->
</body>
</html>