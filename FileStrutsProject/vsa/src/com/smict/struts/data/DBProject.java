package com.smict.struts.data;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.smict.struts.data.DBConnect;
import com.smict.struts.form.BusinessForm;
import com.smict.struts.form.UploadForm;


public class DBProject {
	DBConnect dbcon = new DBConnect();
	Connection conn	= null;
	Statement pStmt = null;
	ResultSet rs	= null;
	//for createproject page
	public List bu_nameList() throws IOException, Exception{
		List buList = new ArrayList();
		String bu_no ="",bu_name="";
		conn = dbcon.getConnectMYSql();
		String sqlQuery = "SELECT business.bu_no,business.bu_name FROM business";
		pStmt = conn.createStatement();
		rs=pStmt.executeQuery(sqlQuery);
		String forwhat ="slc_bu";
		while(rs.next()){
			bu_no = rs.getString("bu_no");
			bu_name = rs.getString("bu_name");
			buList.add(new BusinessForm(forwhat,bu_no,bu_name));
		}
		conn.close();
		pStmt.close();
		rs.close();
		return buList;
	}
	
	public void insproject_todb(String project_name,String project_year,String bu_no,String pic_path) throws IOException, Exception{
		conn = dbcon.getConnectMYSql();
		String sqlQuery ="insert into project(pj_name,pj_year,bu_no) " +
				"values ('"+project_name+"','"+project_year+"','"+bu_no+"')";
		pStmt = conn.createStatement();
		pStmt.execute(sqlQuery);
		
		sqlQuery="select pj_no from project where pj_name = '"+project_name+"'";
		pStmt = conn.createStatement();
		rs = pStmt.executeQuery(sqlQuery);
		String pj_no = "";
		while(rs.next()){
			pj_no = rs.getString("pj_no");
		}
		
		sqlQuery="insert into picpath (pic_path,pic_status,pj_no) values ('"+pic_path+"','1','"+pj_no+"')";
		pStmt = conn.createStatement();
		pStmt.execute(sqlQuery);
	}
}
