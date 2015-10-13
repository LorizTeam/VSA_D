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
	String business_name = request.getParameter("business_name");
    
			String sqlQuery = "SELECT " +
					"a.norti_id," +
					"a.norti_from," +
					"a.norti_email," +
					"substr(a.norti_message,1,30) as norti_message," +
					"b.norti_s," +
					"b.norti_sname," +
					"c.bu_no," +
					"c.bu_name," +
					"a.`timestamp` " +
					"FROM " +
					"nortifications AS a " +
					"INNER JOIN norti_status AS b ON b.norti_s = a.norti_s " +
					"INNER JOIN business AS c ON c.bu_no = a.bu_no ";
					if(!business_name.equals("ทั้งหมด")){
						sqlQuery +="where "+
						"c.bu_name = '"+business_name+"' ";
					}
					sqlQuery+="order by norti_id desc";
    conn = dbcon.getConnectMYSql();
    pStmt = conn.createStatement();
    rs = pStmt.executeQuery(sqlQuery);
    int i = 0;
    while(rs.next()){
    String norti_id = rs.getString("norti_id");
    String norti_from = rs.getString("norti_from");
    String norti_email = rs.getString("norti_email");
    String norti_message = rs.getString("norti_message");
    String norti_s = rs.getString("norti_s");
    String norti_sname = rs.getString("norti_sname");
    String bu_no = rs.getString("bu_no");
    String bu_name = rs.getString("bu_name");
    String timestamp = rs.getString("timestamp");
    
    
%>
		<a data-grid-prepared="true" aria-hidden="false" onclick="Shownorti(<%=norti_id %>)" data-uk-filter="s<%=norti_s%>" class="uk-panel uk-panel-box uk-width-1-1 forclickdetail" style="margin: 0px 0px 5px; position: absolute; box-sizing: border-box; padding-left: 0px; padding-bottom: 0px; top: <%=i %>px; left: 0px; opacity: 1;">
  			<div class="uk-grid">
	    		<div class="uk-width-1-2">
	    			<h5><small>ลำดับที่ <%=norti_id %> (<%=bu_name %>)</small></h5>
	    		</div>
	    		<div class="uk-width-1-2">
	    			<h5><small><span class="mif-alarm"></span><%=timestamp %></small></h5>	 
	    		</div>   				
	    	</div>
  					
  		<% if(norti_s.equals("1")){ %>
			<div id="status" class="uk-panel-badge uk-badge uk-badge-danger"><%=norti_sname %> !</div>
		<%}else{%>
			<div id="status" class="uk-panel-badge uk-badge uk-badge-success"><%=norti_sname %> !</div>
		<%} %>
					
			<p><%=norti_message %></p>		 			
	    	<h3 class="uk-panel-title"><small>
	    		<span class="mif-user"></span> : <b><%=norti_from %></b>	
	    		<span class="mif-envelop"></span> :<b><%=norti_email %></b>   			
	    	</small></h3>
	    	<hr/>   			
		</a>
<%
	i += 123;
    }
%>
