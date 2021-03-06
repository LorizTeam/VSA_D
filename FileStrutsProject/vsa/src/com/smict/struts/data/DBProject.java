package com.smict.struts.data;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.smict.struts.data.DBConnect;
import com.smict.struts.form.BusinessForm;
import com.smict.struts.form.UploadForm;
import com.smict.struts.form.IndexVSAForm;


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
		
		sqlQuery="insert into picpath (pic_path,picstatus,pic_typeno,pj_no) values ('"+pic_path+"',1,2,"+pj_no+")";
		pStmt = conn.createStatement();
		pStmt.execute(sqlQuery);

		conn.close();
		pStmt.close();
		
	}
	
	public void inspicpath_todb(String project_name,String pic_path) throws IOException, Exception{
		conn = dbcon.getConnectMYSql();
		String sqlQuery="select pj_no from project where pj_name = '"+project_name+"'";
		pStmt = conn.createStatement();
		rs = pStmt.executeQuery(sqlQuery);
		String pj_no = "";
		while(rs.next()){
			pj_no = rs.getString("pj_no");
		}
		
		sqlQuery="insert into picpath (pic_path,picstatus,pic_typeno,pj_no) values ('"+pic_path+"',1,2,'"+pj_no+"')";
		pStmt = conn.createStatement();
		pStmt.execute(sqlQuery);

		conn.close();
		pStmt.close();
	}
	
	public void insdetailpicpath_todb(String pj_no,String pic_path) throws IOException, Exception{
		conn = dbcon.getConnectMYSql();
		String sqlQuery="insert into picpath (pic_path,picstatus,pic_typeno,pj_no) values ('"+pic_path+"',1,1,'"+pj_no+"')";
		pStmt = conn.createStatement();
		pStmt.execute(sqlQuery);

		conn.close();
		pStmt.close();
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
				"d.picstatus_name, " +
				"f.pic_typename " +
				"FROM " +
				"project AS a " +
				"INNER JOIN project_type AS b ON b.pj_typeno = a.pj_typeno " +
				"INNER JOIN picpath AS c ON c.pj_no = a.pj_no " +
				"INNER JOIN pic_status AS d ON d.picstatus = c.picstatus " +
				"INNER JOIN business AS e ON e.bu_no = a.bu_no " +
				"INNER JOIN pic_type AS f ON f.pic_typeno = c.pic_typeno " +
				"where " +
				"a.pj_name = '"+pj_name+"' " +
				"order by c.pic_path";
		conn = dbcon.getConnectMYSql();
		pStmt = conn.createStatement();
		rs = pStmt.executeQuery(sqlQuery);
		String 	pj_no="",pj_year="",pj_typename="",bu_name="",pic_path="",
				picstatus_name="",pic_typename="",forwhat="afterchoose";
		while(rs.next()){
			pj_no = rs.getString("pj_no");
			pj_name = rs.getString("pj_name");
			pj_year = rs.getString("pj_year");
			pj_typename = rs.getString("pj_typename");
			bu_name = rs.getString("bu_name");
			pic_path = rs.getString("pic_path");
			picstatus_name = rs.getString("picstatus_name");
			pic_typename = rs.getString("pic_typename");
			Listforafterchoose.add(new BusinessForm(forwhat,pj_no,pj_name,pj_year,pj_typename,bu_name,pic_path,picstatus_name,pic_typename));
		}

		conn.close();
		pStmt.close();
		rs.close();
		return Listforafterchoose;
	}
	
	public List afterchoose_editbypjno(String pj_no) throws IOException, Exception{
		List Listforafterchoose = new ArrayList();
		String sqlQuery = "SELECT " +
				"a.pj_no, " +
				"a.pj_name, " +
				"a.pj_year, " +
				"b.pj_typename, " +
				"e.bu_no, " +
				"e.bu_name, " +
				"c.pic_path, " +
				"d.picstatus_name, " +
				"f.pic_typename " +
				"FROM " +
				"project AS a " +
				"INNER JOIN project_type AS b ON b.pj_typeno = a.pj_typeno " +
				"INNER JOIN picpath AS c ON c.pj_no = a.pj_no " +
				"INNER JOIN pic_status AS d ON d.picstatus = c.picstatus " +
				"INNER JOIN business AS e ON e.bu_no = a.bu_no " +
				"INNER JOIN pic_type AS f ON f.pic_typeno = c.pic_typeno " +
				"where " +
				"a.pj_no = '"+pj_no+"' " +
				"order by c.pic_path";
		conn = dbcon.getConnectMYSql();
		pStmt = conn.createStatement();
		rs = pStmt.executeQuery(sqlQuery);
				pj_no="";
				String pj_year="",pj_typename="",bu_name="",pic_path="",
				picstatus_name="",pic_typename="",pj_name="",forwhat="afterchoose";
		while(rs.next()){
			pj_no = rs.getString("pj_no");
			pj_name = rs.getString("pj_name");
			pj_year = rs.getString("pj_year");
			pj_typename = rs.getString("pj_typename");
			bu_name = rs.getString("bu_name");
			pic_path = rs.getString("pic_path");
			picstatus_name = rs.getString("picstatus_name");
			pic_typename = rs.getString("pic_typename");
			Listforafterchoose.add(new BusinessForm(forwhat,pj_no,pj_name,pj_year,pj_typename,bu_name,pic_path,picstatus_name,pic_typename));
		}

		conn.close();
		pStmt.close();
		rs.close();
		return Listforafterchoose;
	}
	
	public String getbuno_fordetailproject(String pj_no) throws IOException, Exception{
		String sqlQuery = "SELECT " +
				"e.bu_no " +
				"FROM " +
				"project AS a " +
				"INNER JOIN project_type AS b ON b.pj_typeno = a.pj_typeno " +
				"INNER JOIN picpath AS c ON c.pj_no = a.pj_no " +
				"INNER JOIN pic_status AS d ON d.picstatus = c.picstatus " +
				"INNER JOIN business AS e ON e.bu_no = a.bu_no " +
				"where " +
				"a.pj_no = '"+pj_no+"' " +
				"group by e.bu_no " +
				"order by c.pic_path";
		conn = dbcon.getConnectMYSql();
		pStmt = conn.createStatement();
		rs = pStmt.executeQuery(sqlQuery);
		String bu_no="";
		
		while(rs.next()){
			bu_no = rs.getString("bu_no");
		}

		conn.close();
		pStmt.close();
		rs.close();
		return bu_no;
	}
	
	public List projectList(String limit) throws IOException, Exception{
		List projectList = new ArrayList();
		String pj_no ="",pj_name="",pj_year="",bu_name="",pj_typename="",pic_path="";
		conn = dbcon.getConnectMYSql();
		String sqlQuery = "SELECT * FROM `vshowprojectlist`";
		if(!limit.equals("")){
			sqlQuery += "limit "+limit;
		}
		pStmt = conn.createStatement();
		rs=pStmt.executeQuery(sqlQuery);
		String forwhat ="List_project";
		while(rs.next()){
			pj_no = rs.getString("pj_no");
			pj_name = rs.getString("pj_name");
			pj_year = rs.getString("pj_year");
			bu_name = rs.getString("bu_name");
			pj_typename = rs.getString("pj_typename");
			pic_path = rs.getString("pic_path");
			projectList.add(new BusinessForm(forwhat,pj_no,pj_name,pj_year,bu_name,pj_typename,pic_path));
		}
		conn.close();
		pStmt.close();
		rs.close();
		return projectList;
	}
	
	public List editproject(String pic_path,String pj_no,String pj_name,String pj_year,String bu_no,String pj_typeno) throws IOException, Exception{
		List projectList = new ArrayList();
		conn = dbcon.getConnectMYSql();
		String sqlQuery = "UPDATE picpath a " +
				"INNER JOIN project b on (a.pj_no = b.pj_no) " +
				"set a.pic_typeno = " +
				"CASE " +
				"WHEN a.pic_path = '"+pic_path+"' THEN 2 " +
				"ELSE 1 " +
				"END " +
				",b.pj_name = '"+pj_name+"',b.pj_year = '"+pj_year+"',b.bu_no = '"+bu_no+"' ,b.pj_typeno = '"+pj_typeno+"' " +
				"where b.pj_no = '"+pj_no+"'";
		pStmt = conn.createStatement();
		pStmt.execute(sqlQuery);
		conn.close();
		pStmt.close();
		return projectList = afterchoose_edit(pj_name);
	}
	
	public void disable_picstatus(String pic_path) throws IOException, Exception{
		conn = dbcon.getConnectMYSql();
		String sqlQuery = "update picpath set picstatus = 2 where pic_path = '"+pic_path+"'";
		pStmt = conn.createStatement();
		pStmt.execute(sqlQuery);
		conn.close();
		pStmt.close();
	}
	public void enable_picstatus(String pic_path) throws IOException, Exception{
		conn = dbcon.getConnectMYSql();
		String sqlQuery = "update picpath set picstatus = 1 where pic_path = '"+pic_path+"'";
		pStmt = conn.createStatement();
		pStmt.execute(sqlQuery);

		conn.close();
		pStmt.close();
	}
	
	public List Get_HeaderProjectForIndex(String bu_name,int indexpage) {
		List indexList = new ArrayList();
//		
//		int limfirst = 0;
//		int limend = 0;
//		if(indexpage > 1){
//			limfirst = (indexpage*9)-9;
//			limend = indexpage*9;
//		}else{
//			limend = 9;
//		}
		
		
		try {
			conn = dbcon.getConnectMYSql();
			String pj_name="",pj_year="",pj_typename="",pic_path="",pj_no="";
			String sqlQuery = "select * from `index` " +
			"where bu_name = '"+bu_name+"' and picstatus = '1' and pic_typeno = '2' " +
			"group by pj_name " +
			"ORDER BY pj_no DESC ";
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlQuery);
			while(rs.next()){
				pj_name = rs.getString("pj_name");
				pj_year = rs.getString("pj_year");
				pj_typename = rs.getString("pj_typename");
				pic_path = rs.getString("pic_path");
				pj_no = rs.getString("pj_no");
				indexList.add(new IndexVSAForm(pj_name,pj_year,pj_typename,pic_path,pj_no));
			}
			conn.close();
			pStmt.close();
			rs.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
			try {
				if(conn != null)
					conn.close();
				if(pStmt != null)
					pStmt.close();
				if(rs != null)
					rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return indexList;
	}
	public List Get_HeaderProjectForIndex(String bu_name,String project_name) {
		List indexList = new ArrayList();
//		
//		int limfirst = 0;
//		int limend = 0;
//		if(indexpage > 1){
//			limfirst = (indexpage*9)-9;
//			limend = indexpage*9;
//		}else{
//			limend = 9;
//		}
		
		
		try {
			conn = dbcon.getConnectMYSql();
			String pj_name="",pj_year="",pj_typename="",pic_path="",pj_no="";
			String sqlQuery = "select * from `index` " +
			"where bu_name = '"+bu_name+"' and picstatus = '1' and pic_typeno = '2' and pj_name = '"+project_name+"' " +
			"group by pj_name " +
			"ORDER BY pj_no DESC ";
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlQuery);
			while(rs.next()){
				pj_name = rs.getString("pj_name");
				pj_year = rs.getString("pj_year");
				pj_typename = rs.getString("pj_typename");
				pic_path = rs.getString("pic_path");
				pj_no = rs.getString("pj_no");
				indexList.add(new IndexVSAForm(pj_name,pj_year,pj_typename,pic_path,pj_no));
			}
			conn.close();
			pStmt.close();
			rs.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
			try {
				if(conn != null)
					conn.close();
				if(pStmt != null)
					pStmt.close();
				if(rs != null)
					rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return indexList;
	}
	public List Get_PictureProjectForIndex(String bu_name,String pj_name) {
		List indexList = new ArrayList();
		try {
			conn = dbcon.getConnectMYSql();
			String pj_year="",pj_typename="",pic_path="",pj_no="";
			String sqlQuery = "select * from `index` " +
			"where bu_name = '"+bu_name+"' and pj_name = '"+pj_name+"' and picstatus = '1' " +
			"order by pic_typeno desc";
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlQuery);
			while(rs.next()){
				pj_name = rs.getString("pj_name");
				pj_year = rs.getString("pj_year");
				pj_typename = rs.getString("pj_typename");
				pic_path = rs.getString("pic_path");
				pj_no = rs.getString("pj_no");
				indexList.add(new IndexVSAForm(pj_name,pj_year,pj_typename,pic_path,pj_no));
			}
			conn.close();
			pStmt.close();
			rs.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
				try {
					if(conn != null)
						conn.close();
					if(pStmt != null)
						pStmt.close();
					if(rs != null)
						rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		return indexList;
	}
	
	public void Del_Project(String pjno){
		String sql1 = "delete from project where pj_no = ?";
		
		try {
			conn = dbcon.getConnectMYSql();
			PreparedStatement ppStmt = conn.prepareStatement(sql1);
			ppStmt.setInt(1,Integer.parseInt(pjno));
			ppStmt.executeUpdate();
			
			ppStmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
