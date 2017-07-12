<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="dao.*"
		 import="dto.*"
		 import="service.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Q and A </title>
<link type="text/css" href="css/table.css" rel="stylesheet">
<%@ include file="include/include-header.jsp" %>
</head>
<body>
<div class="Allbody">

<div class="head">
<jsp:include page="include-head.jsp"/>
</div><!-- head -->
<div class="main">
<div class="container">
	<div id="form">
		<img src="img/qa.jpg">
	</div>

	<div class="space"></div>
	
	
	<%
		String qpage = (String)request.getParameter("page");
		if(qpage == null) {qpage = "qlist.jsp";}
	%>
	
	<jsp:include page="<%=qpage %>"/>
	
</div><!-- main -->
</div>

<div class="foot">
<jsp:include page="include/include-foot.jsp"/>
</div><!-- foot -->
</div>
<script type="text/javascript">
function openQform(){
	window.open("qform.jsp","qform","width=1000 height=8000");
}
</script>
</body>
</html>