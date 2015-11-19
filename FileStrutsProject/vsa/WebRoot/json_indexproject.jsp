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
		Statement pStmt = null;
		ResultSet rs	= null;
    	
    	List l1 = new LinkedList();
    	
    	String bu_name = request.getParameter("bu_name");
    	String sqlQuery = "select * from `index` where bu_name = '"+bu_name+"' and picstatus = '1' and pic_typeno = '2' group by pj_name ";
    	conn = dbcon.getConnectMYSql();
    	pStmt = conn.createStatement();
    	rs = pStmt.executeQuery(sqlQuery);
    	
    	while(rs.next()){
    		JSONObject obj=new JSONObject();
    		obj.put("bu_no",rs.getString("bu_no"));
    		obj.put("bu_name",rs.getString("bu_name"));
    		obj.put("pj_no",rs.getString("pj_no"));
    		obj.put("pj_name",rs.getString("pj_name"));
    		obj.put("pj_year",rs.getString("pj_year"));
    		obj.put("pj_typeno",rs.getString("pj_typeno"));
    		obj.put("pj_typename",rs.getString("pj_typename"));
    		obj.put("pic_path",rs.getString("pic_path"));
    		obj.put("picstatus",rs.getString("picstatus"));
    		obj.put("pic_typeno",rs.getString("pic_typeno"));
    		l1.add(obj);
    	}  
  		out.println(l1);
  		try{
	  		rs.close();
	  		conn.close();
	  		pStmt.close();
  		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			
				try {
					if(rs != null)
						rs.close();
					if(conn != null)
						conn.close();
					if(pStmt != null)
						pStmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
  		
%>