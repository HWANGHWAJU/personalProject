<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	
	<div id="form">
		<div class="slide">
			<ul class="bxslider">
			  <li><img src="img/mainSlide/mb_001.jpg" /></li>
			  <li><img src="img/mainSlide/mb_004.jpg" /></li>
			  <li><img src="img/mainSlide/mb_007.jpg" /></li>
			  <li><img src="img/mainSlide/mb_008.jpg" /></li>
			  <li><img src="img/mainSlide/mb_010.jpg" /></li>
			</ul>
		</div>
	
		
	</div><!-- form -->
	
	<div id="mdpick">
		<p>추천 상품</p>
		
		<div class="pickItem">
			<a href="">ddddd</a>
		</div>
	</div>
	
	
	
</div><!-- container -->

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