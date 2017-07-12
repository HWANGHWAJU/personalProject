<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<p style="text-align: center;">질문 하기</p>
	<div class="space"></div>
	<center><hr></center>
	
	<div class="board">
		<center>
		<form action="RequestInsertQ.jsp" method="post" enctype="multipart/form-data" id="req">
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
				<td width="300px"><input type="text" id="w" name="w"></td>
			</tr>
			<tr>
				<th>Title</th>
				<td colspan="3"><input type="text" style="width:680px;" id="t" name="t"></td>
			</tr>
			<tr>
				<th>Context</th>
				<td colspan="3"><textarea cols="100" rows="30" placeholder="상품에 관한 문의 시 반드시 제품명을 기입 해주세요." id="c" name="c"></textarea></td>
			</tr>
			<tr>
				<th>File</th>
				<td colspan="3">
					<div id="fileDiv">
					<p><input type="file" id="f" name="f_0"><a href="#">삭제</a></p>
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

var f_count=1;
function addFile(){
	var str="<p><input type='file' name='f_"+(f_count++)+"'><a href='#this' name='fdele'>삭제</a></p>";
	$("#fileDiv").append(str);
}
</script>
</body>
</html>