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
	public List pj_typeList(String bu_no) throws IOException, Exception{
		List pjtypeList = new ArrayList();
		String pj_typeno ="",pj_typename="";
		conn = dbcon.getConnectMYSql();
		String sqlQuery = "select * from project_type where bu_no = '"+bu_no+"' order by pj_typename";
		pStmt = conn.createStatement();
		rs=pStmt.executeQuery(sqlQuery);
		String forwhat ="slc_pjtype";
		while(rs.next()){
			pj_typeno = rs.getString("pj_typeno");
			pj_typename = rs.getString("pj_typename");
			pjtypeList.add(new BusinessForm(forwhat,pj_typeno,pj_typename));
		}
		conn.close();
		pStmt.close();
		rs.close();
		return pjtypeList;
	}
	
	public void insproject_todb(String project_name,String project_year,String bu_no,String pic_path, String pj_typeno) throws IOException, Exception{
		conn = dbcon.getConnectMYSql();
		String sqlQuery ="insert into project(pj_name,pj_year,bu_no,pj_typeno) " +
				"values ('"+project_name+"','"+project_year+"','"+bu_no+"','"+pj_typeno+"')";
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
	
	public List afterchoose_edit(String pj_name) throws IOException, Exception{
		List Listforafterchoose = new ArrayList();
		String sqlQuery = "SELECT " +
				"a.pj_no, " +
				"a.pj_name, " +
				"a.pj_year, " +
				"b.pj_typename, " +
				"e.bu_name, " +
				"c.pic_path, " +
				"d.picstatus_name " +
				"FROM " +
				"project AS a " +
				"INNER JOIN project_type AS b ON b.pj_typeno = a.pj_typeno " +
				"INNER JOIN picpath AS c ON c.pj_no = a.pj_no " +
				"INNER JOIN pic_status AS d ON d.picstatus = c.pic_status " +
				"INNER JOIN business AS e ON e.bu_no = a.bu_no " +
				"where " +
				"a.pj_name = '"+pj_name+"' " +
				"order by c.pic_path";
		conn = dbcon.getConnectMYSql();
		pStmt = conn.createStatement();
		rs = pStmt.executeQuery(sqlQuery);
		String 	pj_no="",pj_year="",pj_typename="",bu_name="",pic_path="",
				picstatus_name="",forwhat="afterchoose";
		while(rs.next()){
			pj_no = rs.getString("pj_no");
			pj_name = rs.getString("pj_name");
			pj_year = rs.getString("pj_year");
			pj_typename = rs.getString("pj_typename");
			bu_name = rs.getString("bu_name");
			pic_path = rs.getString("pic_path");
			picstatus_name = rs.getString("picstatus_name");
			Listforafterchoose.add(new BusinessForm(forwhat,pj_no,pj_name,pj_year,pj_typename,bu_name,pic_path,picstatus_name));
		}
		return Listforafterchoose;
	}
	
	public List projectList() throws IOException, Exception{
		List projectList = new ArrayList();
		String pj_no ="",pj_name="";
		conn = dbcon.getConnectMYSql();
		String sqlQuery = "SELECT " +
				"project.pj_no, " +
				"project.pj_name " +
				"FROM " +
				"project " +
				"GROUP BY project.pj_name " +
				"ORDER BY project.pj_no";
		pStmt = conn.createStatement();
		rs=pStmt.executeQuery(sqlQuery);
		String forwhat ="List_project";
		while(rs.next()){
			pj_no = rs.getString("pj_no");
			pj_name = rs.getString("pj_name");
			projectList.add(new BusinessForm(forwhat,pj_no,pj_name));
		}
		conn.close();
		pStmt.close();
		rs.close();
		return projectList;
	}
}
