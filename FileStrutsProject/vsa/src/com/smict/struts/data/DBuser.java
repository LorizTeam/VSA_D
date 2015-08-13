package com.smict.struts.data;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.smict.struts.data.DBConnect;
import com.smict.struts.form.UserForm;
public class DBuser {
	DBConnect dbcon = new DBConnect();
	Connection conn	= null;
	Statement pStmt = null;
	ResultSet rs	= null;
	public List checklogin(String user,String pass) throws IOException, Exception{
		List userList = new ArrayList();
		String username = "",password ="",name="",surname="",position_name="";
		conn = dbcon.getConnectMYSql();
		String sqlQuery = "select member.username," +
				"member.`password`," +
				"member.`name`," +
				"member.surname," +
				"position.position_name from member INNER JOIN position ON position.position_no = member.position_no " +
				"where username = '"+user+"' and password = '"+pass+"'";
		pStmt =conn.createStatement();
		rs = pStmt.executeQuery(sqlQuery);
		while(rs.next()){
			username = rs.getString("username");
			password = rs.getString("password");
			name = rs.getString("name");
			surname = rs.getString("surname");
			position_name = rs.getString("position_name");
			userList.add(new UserForm(username,password,name,surname,position_name));
		}
		return userList;
	}

}
