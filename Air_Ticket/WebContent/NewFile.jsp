<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="stylesheets/main/main02.css">
</head>
<body>

<script type="text/javascript" src="javascripts/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="javascripts/mainBanner.js"></script>
<script type="text/javascript" src="javascripts/moment.js"></script>


	<div>
			<!-- 배너 -->
			<div id="bannerArea">
				<h2 class="hidden-title">에어서울 배너</h2>
				
				<div class="travel-banner-section">
				
					<div class="travel-banner1">
						<div class="banner-slider">
							<ul id="banner-img">
							 	<li>
									<a href="#"><img src="images/mainbanner/main_event_20170613_ko_1.jpg"></a>
								</li>
								<li>
									<a href="#"><img src="images/mainbanner/main_event_20170629_ko.jpg"></a>
								</li>
								<li>
									<a href="#"><img src="images/mainbanner/main_event_20170613_ko_2.jpg"></a>
								</li>
								<li>
									<a href="#"><img src="images/mainbanner/main_event_20170627_01_ko.jpg"></a>
								</li>
								<li>
									<a href="#"><img src="images/mainbanner/main_event_20170627_02_ko.jpg"></a>
								</li>
							</ul>
						</div>
						
						<div class="indicator">
							<div class="bg_bot">
								<ul class="number">
									<li><span>1</span></li>

								</ul>
								<ul class="control">
									<li class="on"><button type="button" class="stop"><span>STOP</span></button></li>
									<li><button type="button" class="play"><span>PLAY</span></button></li>
								</ul>
							</div>
							<div class="control_group">
								<button type="button" class="prev"><span>이전</span></button>
								<button type="button" class="next"><span>다음</span></button>
							</div>
						</div> <!-- indicator -->
						
					</div><!-- travel-banner-section -->
				</div>
			</div> <!-- bannerArea -->
			
			
		</div> <!-- none div -->

	<script>
	mainBanner();
	</script>

</body>
</html>