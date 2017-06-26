<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Join</title>

</head>
<body>
<div class="container">

<div class="space"></div>
	<center>
	<div id="form">
		<div class="check">
			<h4>회원 가입 약관 동의</h4>
			<div class="ch_1">
				<textarea rows="20" cols="100">가. 수집하는 개인정보의 항목첫째, 회사는 회원가 입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.
회원가입
- 이름, 생년월일, 성별, 아이디, 비밀번호, 별명, 연락처(메일주소, 휴대폰 번호 중 선택), 가입인증정보
만14세 미만 아동 회원가입 
- 이름, 생년월일, 성별, 법정대리인 정보, 아이디, 비밀번호, 연락처 (메일주소, 휴대폰 번호 중 선택), 가입인증정보
단체아이디 회원가입 
- 단체아이디, 회사명, 대표자명, 대표 전화번호, 대표 이메일 주소, 단체주소, 관리자 아이디, 관리자 연락처, 관리자 부서/직위
- 선택항목 : 대표 홈페이지, 대표 팩스번호
둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록
셋째, 네이버 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 개인정보 추가 수집이 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다. 
넷째, 성인컨텐츠, 유료/게임 등 일부 서비스 이용시 관련 법률 준수를 위해 본인인증이 필요한 경우, 아래와 같은 정보들이 수집될 수 있습니다. 
- 이름, 생년월일, 성별, 중복가입확인정보(DI), 암호화된 동일인 식별정보(CI), 휴대폰 번호(선택), 아이핀 번호(아이핀 이용시), 내/외국인 정보
다섯째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다. 
- 신용카드 결제시 : 카드사명, 카드번호 등
- 휴대전화 결제시 : 이동전화번호, 통신사, 결제승인번호 등
- 계좌이체시 : 은행명, 계좌번호 등
- 상품권 이용시 : 상품권 번호
나. 개인정보 수집방법회사는 다음과 같은 방법으로 개인정보를 수집합니다. 
- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 배송요청
- 협력회사로부터의 제공 
- 생성정보 수집 툴을 통한 수집
			</textarea><br>
			<p><input type="checkbox" id="req">개인 정보 수집 및 이용에 동의 합니다.</p>
			</div>
		</div>		
		<div class="space"></div>
		<div>
			<form action="JoinRequest.jsp" method="post" id="joinForm" name="joinForm">
				<table>
					<tr><td height="30px;">*필수 입력</td></tr>
					<tr>
						<td>ID</td>
						<td><input type="text" id="id" name="id" placeholder="중복 확인 해조">
							<input type="button" onclick="idCheck();" value="아이디 중복 확인">
						</td>
					</tr>
					<tr>
						<td>PASSWORD</td>
						<td><input type="password" id="pw" name="pw"></td>
					</tr>
					<tr>
						<td>ㄴPASSWORD</td>
						<td><input type="password" id="conpw" name="conpw"></td>
					</tr>
					<tr>
					<td>NAME</td>
						<td><input type="text" id="name" name="name"></td>
					</tr>
					<tr>
						<td>GENDER</td>
						<td><input type="radio" id="gender" name="gender" value="fe">여성
							<input type="radio" id="gender" name="gender" value="ma">남성
						</td>
					</tr>
					<tr>
						<td>BIRTH</td>
						<td><input type="text" id="birth" name="birth" placeholder="ex) 19940131"></td>
					</tr>
					<tr>
						<td>E-MAIL</td>
						<td><input type="email" id="email" name="email"></td>
					</tr>
					<tr><td height="30px;"></td></tr>
					<tr><td height="30px;">* 선택사항</td></tr>
					<tr>
						<td>PHONE</td>
						<td><input type="text" id="phone" name="phone" placeholder="'-'포함 입력"></td>
					</tr>
					<tr>
						<td>ADDRESS</td>
						<td><input type="text" id="postcode" name="postcode" placeholder="우편번호">
						<input type="button" onclick="execDaumPostcode();" value="우편번호 찾기">
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
						<input type="text" id="roadAddress" name="roadAddress" placeholder="도로명주소">
						<input type="text" id="jibunAddress" name="jibunAddress" placeholder="지번주소">
						<span id="guide" style="color:#999"></span></td>
					</tr>
					
					<tr><td height="30px;"></td></tr>
					<tr>
						<td colspan='3'>
						<center>
							<a href="MainIndex.jsp">취소</a>&nbsp;&nbsp;
							<a href="#this" name="join">회원가입</a>
						</center>
						</td>
					</tr>
				</table>
			</form>
			<div class="space"></div>
			<div class="space"></div>
		</div>
	</div><!-- form -->
	</center>
</div><!-- container -->


<script src="js/JoinCheck.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


<script type="text/javascript">
$(document).ready(function(){
	$("a[name='join']").on("click", function(e){
		e.preventDefault();
		fn_joinCheck($(this));
	});
});
</script>

<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
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
                document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('roadAddress').value = fullRoadAddr;
                document.getElementById('jibunAddress').value = data.jibunAddress;

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