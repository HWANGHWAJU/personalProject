<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dto.*"
		 import="dao.*"
		 import="service.*"
		 import="java.util.*"
%>

<%
	String num = (String)request.getParameter("qnum");
	int _num = Integer.parseInt(num);
	String board="qanda";
	
	qandaDAO dao = new qandaDAO();
	qandaDTO dto = dao.getDetailQ(_num);
	ListFile f = new ListFile(dao.getDetileF(board, _num));
	
	
	request.getSession().setAttribute("Qmain", dto);
	request.getSession().setAttribute("Qfile", f);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

</head>
<body>
<p style="text-align: center;">About A Question </p>
	<div class="space"></div>
	<center><hr></center>
	<div class="space"></div>
	
	<div class="board">
		<center>
		<table class="qaboard" width="800px">
			<tr>
				<th>Header</th>
				<td width="150px;">
				<%=dto.getArticle_cat() %>
				</td>

				<th>Writer</th>
				<td width="300px"><%=dto.getArticle_wrtier() %></td>
			</tr>
			<tr>
				<th>Title</th>
				<td colspan="3" width="680px" ><%=dto.getArticle_title() %></td>
			</tr>
			<tr>
				<th>Context</th>
				<td colspan="3" width="100" height="300px" style="padding:10px;"><%=dto.getArticle_content() %></td>
			</tr>
			<tr>
				<th>File</th>
				<td width="680px;">
				<% for(fileDTO fdto : f.getListFile()){%>
					<a href="fdown.jsp?saved=<%=fdto.getSavename() %>"><%=fdto.getOriginalname() %></a>&nbsp;&nbsp; <%=fdto.getSize() %>(kb))<br/>
				<%} %>
				</td>
			</tr>

		</table>

		<div class="space"></div>
		<center>
			<a href="QandA.jsp">목록</a>&nbsp;&nbsp;
			<a href="QandA.jsp?page=ModifyA.jsp">수정</a>&nbsp;&nbsp;
			<a href="QandA.jsp?page=aform.jsp">답글 달기</a>&nbsp;&nbsp;
			<a href="delQ.jsp?num=<%=_num%>">삭제</a>&nbsp;&nbsp;
		</center>

		</center>
	</div>
	<div class="space"></div>

</body>

</html>