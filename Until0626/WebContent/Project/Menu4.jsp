<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Main Index</title>
<%@ include file="include/include-header.jsp" %>
</head>
<body>

<div class="container">
	<div id="form">

		<div class="slide">
			<ul class="bxslider">
			  <li><img src="img/acc/악1.jpg" /></li>
			  <li><img src="img/acc/악2.jpg" /></li>
			  <li><img src="img/acc/악3.jpg" /></li>
			  <li><img src="img/acc/악4.jpg" /></li>
			  <li><img src="img/acc/악5.jpg" /></li>
			  <li><img src="img/acc/악6.jpg" /></li>
			</ul>
		</div>
	</div>
	<div class="space"></div>
		<div class="typeNbrand">
			<div class="g_list">
				<div class="leftlist">
					<div class="typelist">
						<ul>
							<li><a href="#">스트링</a></li>
							<li><a href="#">피크</a></li>
							<li><a href="#">스트랩</a></li>
							<li><a href="#">스탠드&보면대</a></li>
						</ul>
					</div>
				</div>
				<div class="rightlist">
					
				</div>
			</div>
		</div>
	
	</div>

<script>
$(document).ready(function(){
	  $('.bxslider').bxSlider({
		  	mode :'horizontal',
		  	speed:1000,
		  	auto: true, 
		  	autoContrls : true,
	  });
	  
	});
</script>
</body>
</html>