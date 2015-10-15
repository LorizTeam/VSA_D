package com.smict.struts.data;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

import com.smict.struts.form.NortificationsForm;

public class NortificationsData {
	

	DBConnect dbcon = new DBConnect();
	Connection conn	= null;
	Statement pStmt = null;
	ResultSet rs	= null;
	
	public List select_Nortifications_Header(String norti_id,String bu_no){
		List nortificationsList = new ArrayList();
		String forwhat = "shownorti";
		try {
			conn = dbcon.getConnectMYSql();
			String sqlQuery = "SELECT " +
					"a.norti_id, " +
					"a.norti_from, " +
					"a.norti_email, " +
					"substr(a.norti_message,1,30) as norti_message," +
					"b.norti_s, " +
					"b.norti_sname," +
					"c.bu_no, " +
					"c.bu_name, " +
					"DATE_FORMAT(`timestamp`,'%d-%m-%Y %T') as timestamp " +
					"FROM " +
					"nortifications AS a " +
					"INNER JOIN norti_status AS b ON b.norti_s = a.norti_s " +
					"INNER JOIN business AS c ON c.bu_no = a.bu_no " +
					"where ";
			
			if(!norti_id.equals("") && norti_id != null){
				sqlQuery += "a.norti_id = '"+norti_id+"' AND ";
			}
			
			if(!bu_no.equals("") && bu_no != null){
				sqlQuery += "c.bu_no = '"+bu_no+"' AND ";
			}
			
			sqlQuery += "norti_id <> '' " +
			"order by norti_id desc";
			
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlQuery);
			while(rs.next()){
				nortificationsList.add(new NortificationsForm(forwhat,rs.getString("norti_id"),rs.getString("norti_from"),rs.getString("norti_email"),
						rs.getString("norti_message"),rs.getString("norti_s"),rs.getString("norti_sname"),rs.getString("bu_no")
						,rs.getString("bu_name"),rs.getString("timestamp")));
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return nortificationsList;
	}
	
	public List CountNotifications_NotRead(String bu_no,String noti_s){
		//ดึงค่า การนับ Notifications ว่าของแต่ละบริษัทมีทั้งหมดเท่าไหร่
		List CountNotifications_NotRead = new ArrayList();
		String sqlQuery = null,forwhat = "CountNotifications_NotRead";
		
		try {
			conn = dbcon.getConnectMYSql();
			sqlQuery = "SELECT a.bu_no,COUNT(T1.norti_id) as count_noti_id " +
					"FROM " +
					"business AS a " +
					"left JOIN " +
					"( " +
					"SELECT a.bu_no,b.norti_id from business a " +
					"LEFT JOIN nortifications b on (a.bu_no = b.bu_no) " +
					"where b.norti_s =";
					if(!noti_s.equals(""))
						sqlQuery += " '"+noti_s+"' " ;
					
					sqlQuery +=") as T1 on (a.bu_no = T1.bu_no) " ;
					
					if(!bu_no.equals(""))
						sqlQuery += " where a.bu_no = '"+bu_no+"' " ;
					
					sqlQuery +="GROUP BY a.bu_no " +
					"ORDER BY a.bu_no ";
					
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlQuery);
			while(rs.next()){
				CountNotifications_NotRead.add(new NortificationsForm(forwhat,rs.getString("bu_no"),rs.getString("count_noti_id")));
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return CountNotifications_NotRead;
	}
}
