<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.smict.struts.data.DBConnect" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	String bu_no = request.getParameter("slc_bu");
	DBConnect dbcon = new DBConnect();
	Connection conn	= null;
	Statement pStmt = null;
	ResultSet rs	= null;
	String pj_typeno = "" , pj_typename = "";
	String sqlQuery = "select * from project_type where bu_no = '"+bu_no+"' order by pj_typename";
	conn = dbcon.getConnectMYSql();
	pStmt = conn.createStatement();
	rs = pStmt.executeQuery(sqlQuery);
	rs.last();
	int countrs = rs.getRow();
	rs.beforeFirst();
	if(countrs <= 0){
	%>
		<option value=null>Business Project is Empty</option>
	<%
	}else{
		while(rs.next()){
	%>
		<option value="<%=rs.getString("pj_typeno") %>"><%=rs.getString("pj_typename") %></option>
<%		
		}

	}
%>
	

