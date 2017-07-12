<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
	import="dao.*"
	import="dto.*"
	import="java.util.*"
	import="java.io.*"
	import="service.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
	HttpSession sess = request.getSession();
	
	qandaDTO originDTO =(qandaDTO)sess.getAttribute("Qmain");
	ListFile fList = (ListFile)sess.getAttribute("Qfile");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<p style="text-align: center;">수정 하기</p>
	<div class="space"></div>
	<center><hr></center>
	<div class="space"></div>
	
	<div class="board">
		<center>
		<form action="RequestModifyQ.jsp" method="post" enctype="multipart/form-data" id="req">
		<input type="hidden" id="qnum" name="qnum" value="<%=originDTO.getArticle_num() %>">
		<table class="qaboard" width="800px">
			<tr>
				<th>Header</th>
				<td>
					<select id="header" name="header" style="width:150px;">
						<optgroup label="말머리">
							<option value="" selected="selected"></option>
							<option value="price">가격문의</option>
							<option value="item">상품문의</option>
							<option value="etc">기타문의</option>
						</optgroup>
					</select>
				</td>

				<th>Writer</th>
				<td width="300px"><input type="text" id="w" name="w" value="<%=originDTO.getArticle_wrtier()%>"></td>
			</tr>
			<tr>
				<th>Title</th>
				<td colspan="3"><input type="text" style="width:680px;" id="t" name="t" value="<%=originDTO.getArticle_title()%>"></td>
			</tr>
			<tr>
				<th>Context</th>
				<td colspan="3"><textarea cols="100" rows="30" placeholder="상품에 관한 문의 시 반드시 제품명을 기입 해주세요." id="c" name="c" ><%=originDTO.getArticle_content() %></textarea></td>
			</tr>
			<tr>
				<th>File</th>
				<td colspan="3">
					<div id="fileDiv">
					<% for(fileDTO f : fList.getListFile()){ %>
					<p><a href="#"><%=f.getOriginalname() %></a>&nbsp;(<%=f.getSize() %> kb)
					<input type="file" id="file" name="file"> <a href="#this" onclick="fdel('<%=f.getSavename()%>');">삭제</a></p><br/>
					<div id="textdel"></div>
					<%} %>
					</div>
				</td>
			</tr>
			<tr><td colspan="4"height="15px" style="text-align: right;"><a href="#this" onclick="addFile();">파일 추가</a></td></tr>
			<tr>
				<th>Password</th>
				<td colspan="3"><input type="password" id="p" name="p">&nbsp;작성한 글을 확인하기 위해 사용됩니다.</td>
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
function fdel(saved){
	var fsaved = saved;
	open("fdel.jsp?saved="+fsaved);
	location.reload(true);
}
var f_count=1;
function addFile(){
	var str="<p><input type='file' name='f_"+(f_count++)+"'><a href='#this' name='fdele'>삭제</a></p>";
	$("#fileDiv").append(str);
}
</script>
</body>
</html>