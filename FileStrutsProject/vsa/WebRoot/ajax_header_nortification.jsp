<%@ page language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@page import="com.smict.struts.data.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.SQLException"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.*"%>
<%@page import="com.smict.struts.data.NortificationsData"%>
<%@ page import = "com.smict.struts.form.NortificationsForm"%>
<%
	DBConnect dbcon = new DBConnect();
	Connection conn	= null;
	Statement pStmt = null;
	ResultSet rs	= null;
    JSONObject obj=new JSONObject();
	Iterator<?> iterate = null;
  	List<?> Nortifications = null;
	String id_nortification = request.getParameter("id_nortification");
    
    String sqlQuery = "update nortifications set norti_s = '0' where norti_id = '"+id_nortification+"'";
    conn = dbcon.getConnectMYSql();
    pStmt = conn.createStatement();
    pStmt.executeUpdate(sqlQuery);
    
    conn.close();
    pStmt.close();
%>