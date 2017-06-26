<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="dao.*"
    import="dto.*"
    import="service.*"
    import="java.util.*"
%>
<%
	request.setCharacterEncoding("utf-8");
	BrandService service = new BrandService();
	ListBrand blist = service.getBrandList();
	 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Main Index</title>
<%@ include file="include/include-header.jsp" %>
</head>
<style>
.qaboard{
	padding:0;
	margin:0 auto;
	border: 1px dashed #000d1a; 
}
.qaboard th{
	background: #000d1a;
	color:#fff;
	height: 30px;
}

.qaboard td{
	padding:10px;
	font-size:12px;
	text-align: center;
}

</style>
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
				<div class="leftlist" style=" float:left;">
					<div class="typelist">
						<ul>
							<li><a href="#">통기타</a></li>
							<li><a href="#">클래식 기타</a></li>
							<li><a href="#">일렉트릭 기타</a></li>
							<li><a href="#">베이스 기타</a></li>
						</ul>
					</div>
				</div>
				<div class="rightlist" style="height:220px; width:1100px; padding-top:25px;">
				<center>
				<table style="font-size:15px;">
				<tr>
				<%int count = 0; 
					for(brandDTO brand : blist.getListBrand()){ 
						%>
					<td width="140px"><a href="#"><%=brand.getBrand_name() %></a></td>
						<% count++;
							if(count == 5) { %>
							</tr>
						<% count = 0;} %>
					<%} %>
				</table>
				</center>
				</div>
			</div>
		</div>
		<div class="space"></div>
		<div class="guitarList">
			<div class="allgui">
				<center>
				<table width="100%" class="qaboard">
				<tr>
				<th>No.</th><th>Brand</th><th>Guitar Name</th><th>Price</th><th>Order Count</th><th>Data</th>
				</tr>
				<%int gcount=0;
					ListGuitar glist = service.getGuitarList();
					for(guitarDTO guitar : glist.getListBrand()) {%>
					<tr><td><%=guitar.getG_item_num() %></td><td><%=guitar.getG_brand() %></td><td><%=guitar.getG_item_name() %></td><td><%=guitar.getG_price() %></td><td><%=guitar.getG_ordercnt() %></td><td><%=guitar.getUpdate_date() %></td></tr>
				<%} %>
				</table>
				</center>
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