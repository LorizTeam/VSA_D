<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="com.smict.struts.data.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.SQLException"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.*"%>
<%@page import="org.json.simple.JSONValue"%>
<%	DBConnect dbcon = new DBConnect();
		Connection conn	= null;
		Statement pStmt = null,Stmt = null;
		ResultSet rs	= null,rs_picture=null;
    	
    	List l1 = new LinkedList();
    	
    	String bu_name = request.getParameter("bu_name");
    	String sqlQuery = "select * from `index` where bu_name = '"+bu_name+"' and picstatus = '1' and pic_typeno = '2' group by pj_name ";
    	conn = dbcon.getConnectMYSql();
    	pStmt = conn.createStatement();
    	rs = pStmt.executeQuery(sqlQuery);
    	
    	while(rs.next()){
    		JSONObject obj = new JSONObject();
    		JSONObject obj1 = new JSONObject();
    		
    		List listsrcpicture = new LinkedList();
    		obj.put("pj_no",rs.getString("pj_no"));
    		obj.put("bu_name",bu_name);
    		obj.put("pj_name",rs.getString("pj_name"));
    		
    		
    		String htmlText = " <div id=\""+rs.getString("pj_no")+"\" class=\"uk-modal\"> "+
    		"<div class=\"uk-modal-dialog\">"+
    		"<div class=\"fotorama \" data-nav=\"thumbs\" data-allowfullscreen=\"true\" data-loop=\"true\"  data-ratio=\"16/9\" data-width=\"100%\">";
    		
    		sqlQuery = "select * from `index` where bu_name = '"+bu_name+"' and pj_name = '"+rs.getString("pj_name")+"' and picstatus = '1' and pic_typeno ='1' order by pic_typeno desc";
    		Stmt = conn.createStatement();
    		rs_picture = Stmt.executeQuery(sqlQuery);
    		while(rs_picture.next()){
    			obj1.put("pic_path",rs_picture.getString("pic_path"));
    			listsrcpicture.add(obj1);
    			htmlText += "<img src=\""+rs_picture.getString("pic_path")+"\" alt=\"\" />";
    		}
    		htmlText +="</div></div></div>";
    		
    		obj.put("srcpicture",listsrcpicture);
    		l1.add(obj);
    	}  
  		out.print(l1);
  		
%>