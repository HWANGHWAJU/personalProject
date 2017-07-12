<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="dto.*"
    %>
<%
	HttpSession sess = request.getSession(false);

	userDTO u = (userDTO)sess.getAttribute("loginUser");

%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/Aller.font.js" type="text/javascript"></script>
<script type="text/javascript">
	Cufon.replace('ul.oe_menu div a',{hover: true});
	Cufon.replace('h1,h2,.oe_heading');
</script>
<link href="css/style.css" type="text/css" rel="stylesheet" media="screen"/>
<title>Insert title here</title>


</head>
<body>

<div class="top">


	<div class="title">
		<h1><a href="MainIndex.jsp">Akki PalJA</a></h1>
	</div>

	
	<div class="topsidemenu">
	<% if(u==null){ %>
		<ul>
			<li><a href="MainIndex.jsp">HOME</a>
			<li><a href="MainIndex.jsp?page=LoginPage.jsp">Login</a></li>
			<li><a href="MainIndex.jsp?page=JoinPage.jsp">Sign Up</a></li>
		</ul>
	<%}else if(u!=null){ %>	
		<ul>
			<li><%=u.getM_name() %> 님</li>
			<li><a href="MainIndex.jsp">HOME</a>
			<li><a href="#" onclick="Logout()">Logout</a></li>
			<li><a href="#p">장바구니</a></li>
			<li><a href="MyPage.jsp">My Page</a></li>
		</ul>
	<%} %>
	</div>
<script>
function Logout(){
	if(confirm("로그인 할래?")){
		location.href="Logout.jsp";
	}
}
</script>

<div class="oe_wrapper">
	<div id="oe_overlay" class="oe_overlay"></div>
		<ul id="oe_menu" class="oe_menu">
			<li><a href="MainIndex.jsp?page=Menu1.jsp">기타</a>
				<div style="left:-12px;">
					<ul>
						<li class="oe_heading">Acoustic Guitar</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Electronic Guitar</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Base Guitar</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Classic Guitar</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
				</div>
			</li>
			<li><a href="MainIndex.jsp?page=Menu2.jsp">우쿨렐레</a>
				<div style="left:-144px;">
					<ul>
						<li class="oe_heading">Ukulele</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Uk Accessories</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
				</div>
			</li>
			<li><a href="MainIndex.jsp?page=Menu3.jsp">앰프</a>
				<div style="left:-276px;">
					<ul>
						<li class="oe_heading">Elec Amp</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Base Amp</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Acoustic Amp</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Multi Amp</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
				</div>
			</li>
			<li><a href="MainIndex.jsp?page=Menu4.jsp">악세서리</a>
				<div style="left:-408px;">
					<ul>
						<li class="oe_heading">String</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Strap</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Pick</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Cable</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
				</div>
			</li>
			<li><a href="#">레코딩/타악기</a>
				<div style="left:-540px;">
					<ul>
						<li class="oe_heading">MircoPhone</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Cajon</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Master Keyboard</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Synthesizer</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
				</div>
			</li>
			<li><a href="">교육용/클래식</a>
				<div style="left:-672px;">
					<ul>
						<li class="oe_heading">Melodica</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Ocarina</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Hand Bells</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
					<ul>
						<li class="oe_heading">Recorder</li>
						<li><a href="#">Milano</a></li>
						<li><a href="#">Paris</a></li>
						<li><a href="#">Special Events</a></li>
						<li><a href="#">Runway Show</a></li>
						<li><a href="#">Overview</a></li>
					</ul>
				</div>
			</li>
			<li><a href="MainIndex.jsp?page=After.jsp" style="color:#F5DEB3;">사용후기</a>
		</li>
			<li><a href="QandA.jsp" style="color:#F5DEB3;">Q&A</a>
			</li>
		</ul>
</div>
</div><!-- top -->
<!-- The JavaScript -->

<script type="text/javascript">
    $(function() {
		var $oe_menu		= $('#oe_menu');
		var $oe_menu_items	= $oe_menu.children('li');
		var $oe_overlay		= $('#oe_overlay');

 	    $oe_menu_items.bind('mouseenter',function(){
			var $this = $(this);
			$this.addClass('slided selected');
			$this.children('div').css('z-index','9999').stop(true,true).slideDown(200,function(){
			$oe_menu_items.not('.slided').children('div').hide();
			$this.removeClass('slided');
		});
			}).bind('mouseleave',function(){
					var $this = $(this);
					$this.removeClass('selected').children('div').css('z-index','1');
				});

				$oe_menu.bind('mouseenter',function(){
					var $this = $(this);
					$oe_overlay.stop(true,true).fadeTo(200, 0.6);
					$this.addClass('hovered');
				}).bind('mouseleave',function(){
					var $this = $(this);
					$this.removeClass('hovered');
					$oe_overlay.stop(true,true).fadeTo(200, 0);
					$oe_menu_items.children('div').hide();
				})
            });
        </script>


</body>
</html>