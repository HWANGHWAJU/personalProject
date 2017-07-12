<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="dto.*"
    import="dao.*"
    import="service.*"%>
<%
	HttpSession sess = (HttpSession)request.getSession();
	request.setCharacterEncoding("utf-8");
	qandaDTO qdto = (qandaDTO)sess.getAttribute("Qmain");
	
	int Parent_num = Integer.parseInt(request.getParameter("board_num"));
	int ref = Integer.parseInt(request.getParameter("board_re_ref"));
	int lev = Integer.parseInt(request.getParameter("board_re_lev"));
	int seq = Integer.parseInt(request.getParameter("board_re_seq"));
	
	String title = request.getParameter("t");
	String context = request.getParameter("c");
	
	RequestW reqA = new RequestW(title,context);
	
	qandaDAO dao = new qandaDAO();
	
	int num = dao.insertA(qdto, reqA);
	
	if(num != 0){
		response.sendRedirect("QandA.jsp");
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