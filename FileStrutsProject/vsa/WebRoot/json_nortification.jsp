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

    <%	DBConnect dbcon = new DBConnect();
		Connection conn	= null;
		Statement pStmt = null;
		ResultSet rs	= null;
    	JSONObject obj=new JSONObject();

		String id_nortification = request.getParameter("id_nortification");
    	String sqlQuery = "SELECT a.norti_id,a.norti_from,a.norti_email,a.norti_message,a.norti_s,a.bu_no,a.`timestamp`,b.bu_name,c.norti_sname "+
    	"FROM "+
    	"nortifications AS a "+
    	"INNER JOIN business AS b ON b.bu_no = a.bu_no "+
    	"INNER JOIN norti_status AS c ON c.norti_s = a.norti_s "+
		"where norti_id = '"+id_nortification+"'";
    	conn = dbcon.getConnectMYSql();
    	pStmt = conn.createStatement();
    	rs = pStmt.executeQuery(sqlQuery);
    	while(rs.next()){
    		obj.put("norti_id",rs.getString("norti_id"));
    		obj.put("norti_from",rs.getString("norti_from"));
    		obj.put("norti_email",rs.getString("norti_email"));
    		obj.put("norti_message",rs.getString("norti_message"));
    		obj.put("norti_s",rs.getString("norti_s"));
    		obj.put("bu_no",rs.getString("bu_no"));
    		obj.put("timestamp",rs.getString("timestamp"));
    		obj.put("bu_name",rs.getString("bu_name"));
    		obj.put("norti_sname",rs.getString("norti_sname"));
    		out.print(obj);
   		 	out.flush();
    	}
     %>
