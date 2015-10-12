package com.smict.struts.data;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import com.smict.struts.data.DBConnect;
import com.smict.struts.form.UserForm;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.Base64;

public class DBuser {
	DBConnect dbcon = new DBConnect();
	Connection conn	= null;
	Statement pStmt = null;
	ResultSet rs	= null;
	
	
	public List checkuser(String user,String pass) throws IOException, Exception{
		List userList = new ArrayList();
		String username = "",password ="",name="",surname="",position_name="";
		
			conn = dbcon.getConnectMYSql();
		
		String sqlQuery = "select member.username," +
				"member.`password`," +
				"member.`name`," +
				"member.surname," +
				"position.position_name from member INNER JOIN position ON position.position_no = member.position_no " +
				"where " ;
				if(!user.equals(""))
					sqlQuery+="username = '"+user+"' and ";
				if(!pass.equals(""))			
					sqlQuery+="password = '"+pass+"' and ";
				
				sqlQuery+=" username <> ''";
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
		
		try {
			if (rs != null) 	  rs.close();
			if (conn != null)  conn.close();
			if (pStmt != null) pStmt.close();
		} catch (SQLException e) {
			e.getMessage();
		}
		return userList;
	}
	
	public String encrypt(String input,String keybyte,String ivBytes){
			byte[] changetobyte = keybyte.getBytes();
			byte[] keyBytes = Arrays.copyOf(changetobyte, 24);
			
			byte[] iv = ivBytes.getBytes();
		try {
			
			SecretKeySpec key = new SecretKeySpec(keyBytes, "DESede");
			
			IvParameterSpec ivSpec = new IvParameterSpec(iv);
			
			Cipher cipher = Cipher.getInstance("DESede/CBC/PKCS5Padding");
			cipher.init(Cipher.ENCRYPT_MODE, key, ivSpec);
			byte[] encrypted= cipher.doFinal(input.getBytes());
			System.out.println("___________");
			System.out.println("encrypted string:"
                    + new String(encrypted));
			
			

			cipher.init(cipher.DECRYPT_MODE, key, ivSpec);
			byte[] decrypted= cipher.doFinal(encrypted);
			System.out.println("decrypted string:"
                    + new String(decrypted));
			System.out.println("___________");
			
			
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvalidKeyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvalidAlgorithmParameterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalBlockSizeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (BadPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		java.security.Security.addProvider(new sun.security.provider.Sun());
		return null;
	}
	
	public boolean Createuser(String firstname,String lastname,String username,String position) throws Exception{
		EncryptandDecrypt EncAndDec = new EncryptandDecrypt();
		boolean insert_success = true;
		String DefaultPassword = "12345";
		String password = EncAndDec.Encrypt_Normal(DefaultPassword);
		try {
			conn = dbcon.getConnectMYSql();
			String sqlQuery = "insert into member (username,password,name,surname,position_no,Create_Time) " +
					"values " +
					"('"+username+"','"+password+"','"+firstname+"','"+lastname+"','"+position+"',now())";
			
			pStmt = conn.createStatement();
			int i = pStmt.executeUpdate(sqlQuery);
			if(i <= 0){
				insert_success = false;
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return insert_success;
	}
	
	public List GetPosition (String receive_position_name){
		List GetPositionList =new ArrayList ();
		String forwhat = "GetPosition";
		try {
			conn = dbcon.getConnectMYSql();
			String sqlQuery = "SELECT " +
					"a.position_no, " +
					"a.position_name " +
					"FROM " +
					"position AS a ";
			if(!receive_position_name.equals("") && receive_position_name != null)
				sqlQuery += "where position_name like '%"+receive_position_name+"%'";
			
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlQuery);
			while(rs.next()){
				GetPositionList.add(new UserForm(forwhat,rs.getString("position_no"),rs.getString("position_name")));
			}
			if (rs != null) 	  rs.close();
			if (conn != null)  conn.close();
			if (pStmt != null) pStmt.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if (rs != null) 	  rs.close();
				if (conn != null)  conn.close();
				if (pStmt != null) pStmt.close();
			} catch (SQLException e) {
				e.getMessage();
			}
		}
		return GetPositionList;
	}
	
	public boolean CheckUserPasswordEasy(String password) throws Exception{
		EncryptandDecrypt EncAndDec = new EncryptandDecrypt();
		String EncryptPassword = EncAndDec.Encrypt_Normal("12345");
		String PasswordFromDB="";
		boolean EasyPassword = false;
		if(EncryptPassword.equals(password)){
			EasyPassword = true;
		}
		return EasyPassword;
	}
	public boolean ChangePasswordFromEasy(String username,String password) throws Exception{
		boolean ChangePasswordEasy = false;
		EncryptandDecrypt EncAndDec = new EncryptandDecrypt();
		password = EncAndDec.Encrypt_Normal(password);
		try {
			conn = dbcon.getConnectMYSql();
			String sqlQuery = "update member set username ='"+username+"', password ='"+password+"' where username='"+username+"' ";
			pStmt = conn.createStatement();
			int i = 0;
			i = pStmt.executeUpdate(sqlQuery);
			if(i >= 1){
				ChangePasswordEasy = true;
			}
			if (rs != null) 	  rs.close();
			if (conn != null)  conn.close();
			if (pStmt != null) pStmt.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if (rs != null) 	  rs.close();
				if (conn != null)  conn.close();
				if (pStmt != null) pStmt.close();
			} catch (SQLException e) {
				e.getMessage();
			}
		}
		return ChangePasswordEasy;
	}
	
	public boolean EditUser(String username,String name,String surname,String position_no,String changepasstoeasy) throws Exception{
		boolean ChangePasswordEasy = false;
		//Password Deault is 12345
		EncryptandDecrypt EncAndDec = new EncryptandDecrypt();
		String passwordDefault = EncAndDec.Encrypt_Normal("12345");
		
		try {
			conn = dbcon.getConnectMYSql();
			String sqlQuery = "update member set username ='"+username+"',name = '"+name+"',surname = '"+surname+"',position_no = '"+position_no+"' " ;
			if(changepasstoeasy.equals("on")){
				sqlQuery+=", password ='"+passwordDefault+"' ";
			}
			sqlQuery += "where username='"+username+"' ";
			pStmt = conn.createStatement();
			int i = 0;
			i = pStmt.executeUpdate(sqlQuery);
			if(i >= 1){
				ChangePasswordEasy = true;
			}
			if (rs != null) 	  rs.close();
			if (conn != null)  conn.close();
			if (pStmt != null) pStmt.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if (rs != null) 	  rs.close();
				if (conn != null)  conn.close();
				if (pStmt != null) pStmt.close();
			} catch (SQLException e) {
				e.getMessage();
			}
		}
		return ChangePasswordEasy;
	}
}
