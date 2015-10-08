package com.smict.struts.data;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.smict.struts.data.DBConnect;

public class Pictures{
	DBConnect dbcon = new DBConnect();
	Connection conn	= null;
	Statement pStmt = null;
	ResultSet rs	= null;
	
	public String Del_picture(String pic_path,String pj_no){
		//ถ้าเจอว่ารูปที่ต้องการลบเปนรูป Header จะไม่สามารถลบได้
		String alert = null;
		
		try {
			conn = dbcon.getConnectMYSql();
			String sqlQuery = "select * from picpath " +
					"where pic_path = '"+pic_path+"' and pic_typeno = '2'";
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlQuery);
			if(rs.next()){
				alert= "ไม่สามารถลบรูปที่เป็นหัวเรื่องได้";
			}else{
				sqlQuery = "delete from picpath where ";
				
				if(!pic_path.equals(""))
					sqlQuery += "pic_path = '"+pic_path+"' and ";
				
				if(!pj_no.equals(""))
					sqlQuery += "pj_no = '"+pj_no+"' and ";
				
				sqlQuery += "pic_path <> ''";
				pStmt = conn.createStatement();
				pStmt.executeUpdate(sqlQuery);
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return alert;
	}
}
