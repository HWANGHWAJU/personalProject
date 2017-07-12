<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dto.*"
 		 import="dao.*"
 		 import="service.*" 
		 import="com.oreilly.servlet.MultipartRequest" 
		 import="java.io.*"%>
 
<!-- 파일 중복처리 객체 임포트 -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%

	request.setCharacterEncoding("utf-8");
	

	String savePath="C://Users/lee/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Until0626/file/";
	int filesize = 10*1024*1024;
	
	String header ="";
	String w ="";
	String t="";
	String c="";
	String p="";
	String board="";
	String qnum="";

	
	
	try{
		MultipartRequest multi = new MultipartRequest(request,savePath,filesize,"utf-8", new DefaultFileRenamePolicy());
		
		header = multi.getParameter("header");
		w = multi.getParameter("w");
		t = multi.getParameter("t");
		c = multi.getParameter("c");
		p = multi.getParameter("p");
		board = multi.getParameter("board");
		qnum = multi.getParameter("qnum");
		
		Enumeration files = multi.getFileNames();
		
		qandaDAO dao = new qandaDAO();
		RequestQ req = new RequestQ(t,c,w,p,header);
		InsertQService qservice = new InsertQService();
		
		int q_num = dao.updateQ(req, qnum);
		
		
		while(files.hasMoreElements()){
			String qboard=board;
			int _qnum = q_num;
			String name = (String)files.nextElement();
			String originalFileName = multi.getOriginalFileName(name);
			String savedFileName = multi.getFilesystemName(name);
			String type = multi.getContentType(name);
			
			File f = multi.getFile(name);

			int size = (int)f.length();
		
	
				fileDTO fq = new fileDTO(qboard,_qnum,savedFileName,originalFileName,size);
				qservice.insertFile(fq);
			
		
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}

	response.sendRedirect("QandA.jsp");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>