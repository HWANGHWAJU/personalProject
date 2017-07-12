<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="java.io.*"
    import="java.io.File"%>
    
 <%
  
 	String filename = request.getParameter("saved");
  
  String savePath ="file";
  
  String sDownloadPath ="C://Users/lee/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Until0626/file";
  
  String sFilePath = sDownloadPath +"//"+filename;
  
  byte b[] = new byte[4096];
  File oFile = new File(sFilePath);
  
  FileInputStream in = new FileInputStream(sFilePath);
  
  String sMimeType = getServletContext().getMimeType(sFilePath);
  System.out.println("sMimeType>>>"+sMimeType);
  
  if(sMimeType == null ) sMimeType = "application/octet-stream";
  response.setContentType(sMimeType);
  String sEncoding = new String(filename.getBytes("utf-8"),"8859_1");
  response.setHeader("Content-Disposition","attachment; filename="+sEncoding);
  
  ServletOutputStream out2 = response.getOutputStream();
  int numRead;
  
  while((numRead = in.read(b,0,b.length)) != -1){
	  out2.write(b,0,numRead);
  }
  out2.flush();
  out2.close();
  in.close();
  
  
  
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