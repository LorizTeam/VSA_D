package com.smict.struts.data;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.smict.struts.form.AwardForm;

public class DBaward {

	DBConnect dbcon = new DBConnect();
	Connection conn	= null;
	Statement pStmt = null;
	ResultSet rs	= null;
	
	public void insert_award(String pic_path,String bu_no,String award_name){
		
		
		try {
			conn = dbcon.getConnectMYSql();
			String sqlQuery = "insert into award values ('"+pic_path+"',"+bu_no+",'"+award_name+"')";
			pStmt = conn.createStatement();
			pStmt.executeUpdate(sqlQuery);
			conn.close();
			pStmt.close();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			
				try {
					if(conn != null)
						conn.close();
					if(pStmt != null)
						pStmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
	}
	
	public List select_award(String bu_no){
		List awardList = new ArrayList();
		
		try {
			conn = dbcon.getConnectMYSql();
			String sqlQuery = "SELECT a.award_picpath,b.bu_name,a.award_name FROM `award` a " +
					"inner JOIN business b on (a.bu_no = b.bu_no) ";
			if(!bu_no.equals("")){
				sqlQuery += "where a.bu_no ="+bu_no ;
			}
			
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlQuery);
			String award_picpath="",award_name="",bu_name="";
			while(rs.next()){
				award_picpath = rs.getString("award_picpath");
				bu_name = rs.getString("bu_name");
				award_name = rs.getString("award_name");
				awardList.add(new AwardForm(award_picpath,bu_name,award_name));
			}
			if(conn != null)
				conn.close();
			if(pStmt != null)
				pStmt.close();
			if(rs != null)
				rs.close();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
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
				e.printStackTrace();
			}
		}
		return awardList;
	}
	public boolean delete_award(String pic_path,String path_locate){
		boolean candelete = false;
		int i = 0;
		try {
			conn = dbcon.getConnectMYSql();
			String sqlQuery = "delete from award where award_picpath = '"+pic_path+"'";
			pStmt = conn.createStatement();
			i = pStmt.executeUpdate(sqlQuery);
			if(i>0){
				String[] pic_path_fordelete = pic_path.split("/");
				candelete = true;
				File path_picture = new File(path_locate+"/"+pic_path_fordelete[2]);
				if(path_picture.exists()){
					path_picture.delete();
				}
			}
			
			if(conn != null)
				conn.close();
			if(pStmt != null)
				pStmt.close();
			if(rs != null)
				rs.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
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
				e.printStackTrace();
			}
		}
		return candelete;
	}
}
