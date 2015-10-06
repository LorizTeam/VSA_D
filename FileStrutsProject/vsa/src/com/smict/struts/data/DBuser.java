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
	
	public boolean Createuser(String firstname,String lastname,String username,String position){
		EncryptandDecrypt EncAndDec = new EncryptandDecrypt();
		
		
		return true;
	}
}
