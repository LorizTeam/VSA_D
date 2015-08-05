

<%@page import="com.geekonjava.fileupload.FileUploading"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%
String imagepath=config.getServletContext().getRealPath("/")+"upload\\";


ArrayList<String> imagename = new ArrayList<String>();
	     imagename.add("img1");
	     imagename.add("img2");
	     

	  
HashMap map = FileUploading.UploadFile(imagepath,imagename,request);
out.println(map.get("img1")+"<br>");
out.println(map.get("img2")+"<br>");

%>