<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*"
    import="dao.*"
    import="dto.*"
    import="service.*"
    import="java.text.*"
%>
<%	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	String now = sdf.format(date);
	String then ="";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<p style="text-align: center;">Q & A</p>
	<div class="space"></div>
	<center><hr></center>
	<div class="space"></div>

	<div class="board">
		<center>
		<table class="qaboard" width="1000px">
			<colgroup>
				<col width="100"/>
				<col width="150"/>
				<col width="400"/>
				<col width="150"/>	
				<col width="200"/>
			</colgroup>
			<thead>
				<tr>
					<th>No.</th>
					<th>Category</th>
					<th>Title</th>
					<th>Writer</th>
					<th>Date</th>
				</tr>
			</thead>
			
			<%
			
			QlistService qService = new QlistService();
			QlistPaging qpaging = (QlistPaging)session.getAttribute("qPage");
			
			if(qpaging == null){
				qpaging = qService.getQlist(1);
			}
			%>
			
			<tbody style="text-align: center;">
			<%
				int total = qpaging.getTotal();
				if(total == 0 ){
			%>
				<tr><td>등록된 글이 없읍니다.</td></tr>
			<%}else{ 
			for(qandaDTO dto : qpaging.getList()){%>
				<tr>
					<td><%=dto.getArticle_num()%></td>
					<td><%=dto.getArticle_cat()%></td>
					<td>
						<div align="center">
							<%if(dto.getRe_lev()!=0){ 
								for(int a=0; a< dto.getRe_lev()*2;a++) {%>
								&nbsp; <%}%>
									<img src="img/reply_icon.gif">  <%}%>
						<a href="QandA.jsp?page=readQ.jsp?qnum=<%=dto.getArticle_num()%>"><%=dto.getArticle_title()%></a>
						<%then = dto.getDate();
							if(now.equals(then))%><img src="img/new.jpg">				
						</div>
					
					</td>
					<td><%=dto.getArticle_wrtier()%></td>
					<td><%=dto.getDate() %></td>
			<%}
			}%>

			</tbody>
		</table>
		</center>
		<div class="space"></div>
		<center>
			<div class="PAGE_NAVI">
			<%
				boolean ismore= qpaging.hasQ();
				
				if(ismore == true){
			%><center><%
			int startpage = qpaging.getstartpage();
			int endpage = qpaging.getendpage();
			int pNo = 1;
			
			if(startpage > 5){ %>
			<a href="#">이전&lt;&lt;</a> <%}
			for( pNo = startpage ; pNo <= endpage; pNo++){%>
			<a href="#">[<%=pNo %>]</a>
			<%} if(endpage < startpage) { %>
			<a href="#">&gt;&gt;다음</a><%}
			}%>
			</center>
			</div>
			<div class="space"></div>
			<div><a href="QandA.jsp?page=qform.jsp">작성하기</a></div>
		</center>
		<div class="space"></div>
		</div>

</body>
</html>