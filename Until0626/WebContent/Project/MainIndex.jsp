<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Main Index</title>
<%@ include file="include/include-header.jsp" %>
</head>
<body>
<div class="Allbody">

<div class="head">
<jsp:include page="include-head.jsp"/>
</div><!-- head -->

<div class="main">
<%
	String mainpage = (String)request.getParameter("page");
	if( mainpage == null) { mainpage = "Main_default.jsp"; }
%>
<jsp:include page="<%=mainpage %>"></jsp:include>
</div><!-- main -->

<div class="foot">
<jsp:include page="include/include-foot.jsp"/>
</div><!-- foot -->

</div>
</body>
</html>