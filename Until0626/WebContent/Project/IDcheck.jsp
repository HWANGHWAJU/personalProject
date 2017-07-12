<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="dao.*"
    import="dto.*"%>
<%
	request.setCharacterEncoding("utf-8");
	HttpSession sess = (HttpSession)request.getSession();
	
	String inputid= request.getParameter("inputid");
	
	memberDAO mDAO = new memberDAO();
	
	boolean id = mDAO.checkId(inputid);
	
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(id == true) {%>
	<script>
		alert("사용할 수 있습니다.");
		window.close();
	</script>
	<%}else if( id == false){ %>
	<script>
		alert("사용할 수 없습니다.");
		opener.document.getElementById('inputid').select();
		window.close();
	</script>
	<%} %>
</body>
</html>