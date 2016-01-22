<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test-loop.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
    
    int indexconntent = 19;
    int divcontent = indexconntent / 9;
    int modcontent = indexconntent % 9 ;
    int loopcontent = divcontent;
    if(modcontent > 0){
    	loopcontent++;
    }
    int k = 0;
    for(int i = 0; i< loopcontent; i++){
    			k++;
    			System.out.println(k);
    			System.out.println("_______________________________________________");
        		System.out.println("*************************");
        		
        		for( int c = 0 ; c <9 ; c++){
        			
        			String content = "* \t";
                    System.out.print(content);
                    
        		}
        		
                System.out.println("*************************");
    		
    }
    
    
    %>
  </body>
</html>
