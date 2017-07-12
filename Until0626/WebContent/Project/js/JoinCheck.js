
/*Join Check Form */

function idCheck(){
	window.open("IDcheckView.jsp", "chk", "width=500, height=200");
}

function fn_joinCheck(obj){
	alert("hi");
	var form = document.getElementById('joinForm');
	var c = document.getElementById('req');
	if(c.checked==false){
		alert("약관 동의 체크해");
		return false;
	}

	var id=document.getElementById("id").value;
	var pw = document.getElementById("pw").value;
	var conpw = document.getElementById("conpw").value;
	var name=document.getElementById("name").value;
	var gender=document.getElementById("gender").value;
	var birth=document.getElementById("birth").value;
	var email=document.getElementById("email").value;
	
	
	if(id.length==0||pw.length==0||name.length==0||birth.length==0||email.length==0||gender.checked==false){
		alert("완성 되지 않았음");
		return false;
	}
	
	if(pw != conpw) {alert("비밀 번호가 일치하지 않습니다."); return false;}

	form.submit();
	
	
}
