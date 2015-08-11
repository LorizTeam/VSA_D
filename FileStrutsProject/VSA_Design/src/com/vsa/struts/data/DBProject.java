package com.vsa.struts.data;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.vsa.struts.data.DBConnect;
import com.vsa.struts.form.CreateprojectForm;


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
		while(rs.next()){
			bu_no = rs.getString("bu_no");
			bu_name = rs.getString("bu_name");
			buList.add(new CreateprojectForm(bu_no,bu_name));
		}
		return buList;
	}
}
