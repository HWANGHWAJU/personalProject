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
			  <li><img src="img/guitar/베이스1.jpg" /></li>
			  <li><img src="img/guitar/일렉1.jpg" /></li>
			  <li><img src="img/guitar/클래식1.jpg" /></li>
			  <li><img src="img/guitar/통기타1.jpg" /></li>
			</ul>
		</div>
	</div>
	<div class="space"></div>
		<div class="typeNbrand">
			<div class="g_list">
				<div class="leftlist">
					<div class="typelist">
						<ul>
							<li><a href="#">통기타</a></li>
							<li><a href="#">클래식 기타</a></li>
							<li><a href="#">일렉트릭 기타</a></li>
							<li><a href="#">베이스 기타</a></li>
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