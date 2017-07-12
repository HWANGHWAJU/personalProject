<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<style>
a{text-decoration: none; color:black;}
</style>
<body>
<h1>Hello : )</h1>
<center>

사용할 아이디 : <input type="text" id="inputid">&nbsp;<input type="button" value="중복 확인" onclick="check();"><br/><br/>
<a href="#" onclick="fn_useId();">사용</a>&nbsp;&nbsp;<a href="#" onclick="fclose();">취소</a> 
</centeR>
<script type="text/javascript">
$(document).ready(function(){
	$("a[name='use']").on("click", function(e){
		fn_useId($(this));
	});
});
function fn_useId(){
	var useId = document.getElementById('inputid').value;
	alert(useId);
	opener.document.getElementById('id').value = useId;
	window.close();
}
function check(){
	var inputid = document.getElementById('inputid').value;
	open("IDcheck.jsp?inputid="+inputid,"","width=100, height=30");
}
function fclose(){
	window.close();
}
</script>
</body>
</html>