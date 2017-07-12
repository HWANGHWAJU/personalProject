<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="dao.*"
    import="dto.*"
    import="service.*"%>
<%
	request.setCharacterEncoding("utf-8");
	HttpSession sess =(HttpSession)request.getSession();
	qandaDTO qmain = (qandaDTO)sess.getAttribute("Qmain");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<p style="text-align: center;">답글 달기</p>
	<div class="space"></div>
	<center><hr></center>
	<div class="space"></div>
	
	<div class="board">
		<center>
		<form action="RequestInsertA.jsp" method="post"  id="req">
		<input type="hidden" name="board_num" value="<%=qmain.getArticle_num() %>">
		<input type="hidden" name="board_re_ref" value="<%=qmain.getRe_ref() %>">
		<input type="hidden" name="board_re_lev" value="<%=qmain.getRe_lev() %>">
		<input type="hidden" name="board_re_seq" value="<%=qmain.getRe_seq() %>">
		<table class="qaboard" width="800px">
			<tr>
				<th>Header</th>
				<td> 문의 답글 </td>

				<th>Writer</th>
				<td width="300px">관리자</td>
			</tr>
			<tr>
				<th>Title</th>
				<td colspan="3"><input type="text" style="width:680px;" id="t" name="t"></td>
			</tr>
			<tr>
				<th>Context</th>
				<td colspan="3"><textarea cols="100" rows="30" id="c" name="c"></textarea></td>
			</tr>
	
		</table>
		<input type="hidden" id="board" name="board" value="qanda">
		<div class="space"></div>
		<center><a href="#" onclick="submit();">등록</a>&nbsp;<a href="QandA.jsp">취소</a></center>
		</form>	
		</center>
	</div>
	<div class="space"></div>
<script>
function submit(){
	document.getElementById('req').submit();
}
</script>
</body>
</html>