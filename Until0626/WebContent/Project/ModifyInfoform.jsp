<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="dao.*"
	import="dto.*"
%>
<%
	HttpSession sess=request.getSession();
	request.setCharacterEncoding("utf-8");
	
	memberDAO dao = new memberDAO();
	userDTO user = (userDTO)sess.getAttribute("loginUser");
	memberDTO minfo = (memberDTO)sess.getAttribute("memberInfo");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
<title>Insert title here</title>
<style>
table tr th{width:30%;}
</style>
</head>
<body>
<div>
<div class="space"></div>
<div class="space"></div>
<div class="board">
	<center>
	<form action="ModifyMemInfo.jsp" method="post" id="modiform">
	<input type="hidden" id="id" name="id" value="<%=minfo.getM_id() %>">
	<input type="hidden" id="post" name="postcode" value="<%=minfo.getM_postcode() %>">
	<input type="hidden" id="road" name="roadAddress" value="<%=minfo.getM_roadAddress() %>">
	<input type="hidden" id="jibun" name="jibunAddress" value="<%=minfo.getM_jibunAddress() %>">
		<table class="qaboard" width="500px;" style="table-layout: fixed;" border="1">
			<tr>
				<th>아이디</th>
				<td><%=minfo.getM_id() %></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
				<input type="password" id="pw" name="pw" value="<%=minfo.getM_pw() %>">
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>
				<input type="text" id="name" name="name" value="<%=minfo.getM_name() %>">
				</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
				<%=minfo.getM_gender() %>
				</td>
			</tr>
			<tr>
				<th>생일</th>
				<td>
				<input type="text" id="birth" name="birth" placeholder="ex) 19940131" value="<%=minfo.getM_birth()%>">
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>
				<input type="email" id="email" name="email" value="<%=minfo.getM_email() %>">
				</td>
			</tr>
			<tr><td height="30px;"></td></tr>
			<tr>
				<th>핸드폰 번호</th>
				<td>
				<input type="text" id="phone" name="phone" value="<%=minfo.getM_phone() %>">
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" id="newpostcode" name="newpostcode"value="<%=minfo.getM_postcode() %>"placeholder="우편번호">
					<input type="button" onclick="execDaumPostcode();" value="우편번호 찾기">
			</tr>
			<tr>
				<th>&nbsp;</th>
				<td><input type="text" id="newroadAddress" name="newroadAddress" value="<%=minfo.getM_roadAddress()%>"placeholder="도로명주소">
					<input type="text" id="newjibunAddress" name="newjibunAddress" value="<%=minfo.getM_jibunAddress()%>"placeholder="지번주소">
					<span id="guide" style="color:#999"></span>
				</td>
			</tr>		
		</table>
		</form>
		<div class="space"></div>
		<a href="#this" onclick="submit();">변경하기</a>
	</center>
</div>
</div>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
function submit(){
	document.getElementById('modiform').submit();
}
function execDaumPostcode() {
	
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('newpostcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('newroadAddress').value = fullRoadAddr;
            document.getElementById('newjibunAddress').value = data.jibunAddress;

            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                //예상되는 도로명 주소에 조합형 주소를 추가한다.
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

            } else {
                document.getElementById('guide').innerHTML = '';
            }
        }
    }).open();
}
</script>
</body>
</html>