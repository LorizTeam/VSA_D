package com.smict.struts.data;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;

public class EncryptandDecrypt {
	String keyStr = "MAKXiskqmfa8gs2ge2ZaQAS0";
	String ivStr ="z51vsz8T";
	public byte[] Encrypt(String input){
		
		byte[] keybyte = keyStr.getBytes();
		byte[] ivbyte = ivStr.getBytes();
		byte[] encrypted = null;
		SecretKeySpec key = new SecretKeySpec(keybyte, "DESede");
		IvParameterSpec iv = new IvParameterSpec(ivbyte);
		String Str_encrypt = null;
		try {
			Cipher cipher = Cipher.getInstance("DESede/CBC/PKCS5Padding");
			cipher.init(Cipher.ENCRYPT_MODE, key, iv);
		
			encrypted= cipher.doFinal(input.getBytes());
			System.out.println("___________");
			System.out.println("Encrypt String: "+new String(encrypted));
			System.out.println("Encrypt byte: "+encrypted);
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
		
		return encrypted;
	}
public byte[] Decrypt(String input){
		
		byte[] keybyte = keyStr.getBytes();
		byte[] ivbyte = ivStr.getBytes();
		byte[] encrypted = Encrypt(input);
		byte[] decrypted = null;
		SecretKeySpec key = new SecretKeySpec(keybyte, "DESede");
		IvParameterSpec iv = new IvParameterSpec(ivbyte);
		String Str_encrypt = null;
		try {
			Cipher cipher = Cipher.getInstance("DESede/CBC/PKCS5Padding");
			cipher.init(Cipher.DECRYPT_MODE, key, iv);
		
			decrypted= cipher.doFinal(encrypted);
			System.out.println("___________");
			System.out.println("Decrypted String: "+new String(decrypted));
			System.out.println("Decrypted byte: "+decrypted);
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
		
		return decrypted;
	}
}
