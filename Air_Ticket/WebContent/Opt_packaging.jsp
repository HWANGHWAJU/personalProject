<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko"><head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1200">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Content-Security-Policy" content="default-src *; script-src 'self' 'unsafe-inline' 'unsafe-eval' *; style-src  'self' 'unsafe-inline' *">
    <meta content="text/html; charset=UTF-8; X-Content-Type-Options=nosniff" http-equiv="Content-Type">
    <meta http-equiv="X-XSS-Protection" content="0">    
    <title>부가 서비스 안내</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/common/favicon.ico">
     <link rel="stylesheet" type="text/css" href="stylesheets/main/main.css">
    
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/company.css">  
  <link rel="stylesheet" type="text/css" href="stylesheets/common/common.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/board.css">  
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/service.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/utile.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/swiper.min.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/myreservation.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/air_booking.css">
    
    <script type="text/javascript" src="javascripts/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery.placeholder.js" ></script>
    <script type="text/javascript" src="javascripts/designCommon_onServer.js" ></script>
    <script type="text/javascript" src="javascripts/moment.js"></script>
    <script type="text/javascript" src="javascripts/airs_booking.js"></script>
    <script type="text/javascript" src="javascripts/airs_common.js"></script>
    <!-- 20160722 추가 -->
    <link rel="icon" href="images/common/favi_16x16.png" type="image/gif" sizes="16x16">
    <link rel="icon" href="images/common/favi_32x32.png" type="image/gif" sizes="32x32">
    <link rel="icon" href="images/common/favi_152x152.png" type="image/gif" sizes="152x152">
<style type="text/css">
.box-info.type-fare{background-image:url(images/service/icon_fare.png)}
.box-info.type-reservation{background-image:url(images/service/icon_reservation.png)}
.box-info.type-charged{background-image:url(images/service/icon_charged.png)}
</style>

</head>



  
<body style="zoom: 1;">


<div id="wrap" class="myreservation">
<div><jsp:include page="header.jsp"/></div>



<!-- wrap -->
<div id="container">
        <div id="content">
            <!-- location -->
            <div id="location" class="" style="top: 0px;">
                <ol class="location_area">
                    <li><a href="/CW/ko/main.do"><!-- 홈 -->홈</a></li>
                    <li><a href="/CW/ko/booking_reservation.do"><!-- 서비스 -->서비스 안내</a></li>
                    <li><a href="/CW/ko/advance_seat_selection.do"><!-- 부가 서비스 -->부가 서비스 구매</a>
                        <div class="btn_lnb"><a href="#none"><!-- 서비스 안내 하위메뉴 -->서비스 안내 하위메뉴</a><span class="hidden-title">열기</span></div>
                        <div class="lnb_area" style="display: none;">
                            <ul class="location_lnb">
                                <li><a href="/CW/ko/booking_reservation.do"><!-- 항공권 안내 -->항공권 안내</a></li>
                                <li class="on"><a href="/CW/ko/advance_seat_selection.do"><!-- 부가 서비스 -->부가 서비스 구매</a></li>
                                <li><a href="/CW/ko/online-check-in.do"><!-- 공항 서비스 -->공항 서비스</a></li>
                                <li><a href="/CW/ko/cabin.do"><!-- 기내 서비스 -->기내 서비스</a></li>
                                <li><a href="/CW/ko/infant.do"><!-- 도움이 필요한 고객 -->도움이 필요한 고객</a></li>
                                <li><a href="/CW/ko/mobile.do"><!-- 모바일 서비스 -->모바일 서비스</a></li>
                                <li><a href="/CW/ko/download.do"><!-- 양식 다운로드 -->양식 다운로드</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="current"><span><!-- 사전 좌석 구매 -->사전 좌석 구매</span>
                        <div class="btn_lnb"><a href="#none"><!-- 부가 서비스 하위메뉴 -->부가 서비스 구매 하위메뉴</a><span class="hidden-title">열기</span></div>
                        <div class="lnb_area" style="display: none;">
                            <ul class="location_lnb">
                                <li><a href="Opt_advance_seats.bo"><!-- 사전 좌석 구매 -->사전 좌석 구매</a></li>
                                <li><a href="Opt_overbaggage.bo"><!-- 사전 초과 수하물 구매 -->사전 초과 수하물 구매</a></li>
                                <li><a href="Opt_meals.bo"><!-- 사전 기내식 주문 -->사전 기내식 주문</a></li>
                                <li><a href="Opt_duty.bo"><!-- 기내 면세품 -->기내 면세품</a></li>
                                <li><a href="Opt_cafe.bo">Café Mint</a></li>
                                <li class="on"><a href="Opt_packaging.bo"><!-- 유료 아이템 -->공항 포장용품</a></li>
                            </ul>
                        </div>
                    </li>
                </ol>
            </div>
            <!-- content_inner -->
  <div class="content_inner">
                
                <h1 class="pagetitle">부가 서비스 구매</h1>
                <ul class="list-tab type-1">
                    <li><a href="Opt_advance.bo"><!-- 사전 좌석 구매 -->사전 좌석 구매</a></li>
                    <li><a href="Opt_overbaggage.bo"><!-- 사전 초과 수하물 구매 --> 사전 초과 수하물 구매</a></li>
                    <li><!-- 사전 기내식 --><a href="Opt_meals.bo">사전 기내식 주문</a></li>
                    <li><a href="Opt_duty.bo"><!-- 기내 면세품 -->기내 면세품</a></li>
                    <li><a href="Opt_cafe.bo"><!-- Cafe Mint -->Café Mint</a></li>
                    <li class="on"><a href="Opt_packaging.bo"><!-- 유료 포장 아이템 -->공항 포장용품 </a></li>
                </ul>
                <!-- 내용 -->
                <div class="area-service">
                    <div class="box-info type-charged">
                        <p>위탁수하물이나 유모차, 골프클럽 등을 포장할 수 있는 포장용품을 공항에서 구매하실 수 있습니다. </p>
                    </div>
                    <h2 class="table-title-big mgt50"><!-- 가격 안내 -->가격 안내</h2>
                    <div class="tbl-data-col03 type-1 mgt20">
                        <table>
                            <caption>가격(KRW, JPY, USD)으로 구성된 가격 안내표입니다.</caption>
                            <colgroup>
                                <col>
                                <col style="width:24%">
                                <col style="width:24%">
                                <col style="width:24%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col" rowspan="2"><!-- 구분 -->구분</th>
                                    <th scope="col" colspan="3"><!-- 가격 -->가격</th>
                                </tr>
                                <tr>
                                    <th scope="col">KRW</th>
                                    <th scope="col">JPY</th>
                                    <th scope="col">USD</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><!-- 포장용 비닐 -->포장용 비닐</td>
                                    <td class="tbl-price"> 2,000</td>
                                    <td class="tbl-price"> 200</td>
                                    <td class="tbl-price"> 2</td>
                                </tr>
                                <tr>
                                    <td><!-- 골프박스 -->골프박스</td>
                                    <td class="tbl-price"> 3,000</td>
                                    <td class="tbl-price"> 300</td>
                                    <td class="tbl-price"> 3</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                <!-- //내용 -->
                </div>
            </div>
        </div>
    </div>
	<p name="viewLayerLogin" href="I/KO/viewOneLogin" class="jsOpenLayer" style="display:none;"></p>

<!-- wrap -->
	 
   
	
<!-- 0526 header div 부분 닫음처리  -->
</div>
<!-- wrap -->






    <div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
  </body>
</html>