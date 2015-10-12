package com.smict.struts.data;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.KeySpec;

import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;

import org.apache.commons.codec.binary.Base64;

public class EncryptandDecrypt {
	String keyStr = "MAKXiskqmfa8gs2ge2ZaQAS0";
	String ivStr ="z51vsz8T";
	
	private static final String UNICODE_FORMAT = "UTF8";
    public static final String DESEDE_ENCRYPTION_SCHEME = "DESede";
    private KeySpec ks;
    private SecretKeyFactory skf;
    private Cipher cipher;
    byte[] arrayBytes;
    private String myEncryptionKey;
    private String myEncryptionScheme;
    SecretKey key;
    
    public EncryptandDecrypt() throws Exception{
    	myEncryptionKey = "ThisIsSpartaThisIsSparta";
        myEncryptionScheme = DESEDE_ENCRYPTION_SCHEME;
        arrayBytes = myEncryptionKey.getBytes(UNICODE_FORMAT);
        ks = new DESedeKeySpec(arrayBytes);
        skf = SecretKeyFactory.getInstance(myEncryptionScheme);
        cipher = Cipher.getInstance(myEncryptionScheme);
        key = skf.generateSecret(ks);
    }
	
	public byte[] EncryptReturnByte(String input){
		
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
//			System.out.println("____EncryptReturnByte_______");
//			System.out.println("Encrypt String: "+new String(encrypted));
//			System.out.println("Encrypt byte: "+encrypted);
//			System.out.println("Return: "+encrypted);
//			System.out.println("___________");
		
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
		byte[] encrypted = EncryptReturnByte(input);
		byte[] decrypted = null;
		SecretKeySpec key = new SecretKeySpec(keybyte, "DESede");
		IvParameterSpec iv = new IvParameterSpec(ivbyte);
		String Str_encrypt = null;
		try {
			Cipher cipher = Cipher.getInstance("DESede/CBC/PKCS5Padding");
			cipher.init(Cipher.DECRYPT_MODE, key, iv);
		
			decrypted= cipher.doFinal(encrypted);
//			System.out.println("____Decrypt_______");
//			System.out.println("Decrypted String: "+new String(decrypted));
//			System.out.println("Decrypted byte: "+decrypted);
//			System.out.println("Return: "+decrypted);
//			System.out.println("___________");
		
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

	public byte[] DecryptreceiveStringEncrypte(String EncryptString) throws UnsupportedEncodingException{
//	System.out.println("_____DecryptreceiveStringEncrypte______");
//	System.out.println("EncryptString :"+EncryptString);
	
	byte[] keybyte = keyStr.getBytes();
	byte[] ivbyte = ivStr.getBytes();
	byte[] encrypted = null;
	encrypted = EncryptString.getBytes("ISO-8859-1");
	byte[] decrypted = null;
	SecretKeySpec key = new SecretKeySpec(keybyte, "DESede");
	IvParameterSpec iv = new IvParameterSpec(ivbyte);
	String Str_encrypt = null;
	try {
		Cipher cipher = Cipher.getInstance("DESede/CBC/PKCS5Padding");
		cipher.init(Cipher.DECRYPT_MODE, key, iv);
	
		decrypted= cipher.doFinal(encrypted);
		
//		System.out.println("Decrypted String Round 1: "+new String(decrypted));
//		System.out.println("Decrypted byte Round 1: "+decrypted);
//		System.out.println("Return 1: "+new String(decrypted));
		cipher.init(Cipher.DECRYPT_MODE, key, iv);
//	System.out.println("_________________________________\t");
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
	
	public String EncryptReturnString(String input){
	
	byte[] keybyte = keyStr.getBytes();
	byte[] ivbyte = ivStr.getBytes();
	byte[] encrypted = null;
	byte[] decrypted = null;
	SecretKeySpec key = new SecretKeySpec(keybyte, "DESede");
	IvParameterSpec iv = new IvParameterSpec(ivbyte);
	String Str_encrypt = null;
	String StrEncrypted = null;
	try {
		Cipher cipher = Cipher.getInstance("DESede/CBC/PKCS5Padding");
		cipher.init(Cipher.ENCRYPT_MODE, key, iv);
	
		encrypted= cipher.doFinal(input.getBytes());
//		System.out.println("_____EncryptReturnString______");
//		System.out.println("Encrypt String Round: "+new String(encrypted));
//		System.out.println("Encrypt byte Round: "+encrypted);
//		System.out.println("Return : "+new String(encrypted));
		StrEncrypted = new String(encrypted, "ISO-8859-1");
		
//		// Decrypt
//		cipher.init(Cipher.DECRYPT_MODE, key, iv);
//		decrypted= cipher.doFinal(encrypted);
//		System.out.println("Decrypted String Round 1: "+new String(decrypted));
//		System.out.println("Decrypted byte Round 1: "+decrypted);
//		System.out.println("Return : "+new String(decrypted)+"\t");
//		
		
//		
//		System.out.println("StrEncrypted :"+StrEncrypted);
//		cipher.init(Cipher.DECRYPT_MODE, key, iv);
//		decrypted= cipher.doFinal(StrEncrypted.getBytes("ISO-8859-1"));
//		System.out.println("Decrypted String Round 2: "+new String(decrypted));
//		System.out.println("Decrypted byte Round 2: "+decrypted);
//		System.out.println("Return : "+new String(decrypted));
//		System.out.println("_________________________________");
		
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
	} catch (UnsupportedEncodingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return StrEncrypted;
	}
	
	
	public String Encrypt_Normal(String unencryptedString){
		 String encryptedString = null;
		try {
	            cipher.init(Cipher.ENCRYPT_MODE, key);
	            byte[] plainText = unencryptedString.getBytes(UNICODE_FORMAT);
	            byte[] encryptedText = cipher.doFinal(plainText);
	            encryptedString = new String(Base64.encodeBase64(encryptedText));
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return encryptedString;
	}
	public String Decrypt_normal(String encryptedString){
		String decryptedText=null;
        try {
            cipher.init(Cipher.DECRYPT_MODE, key);
            byte[] encryptedText = Base64.decodeBase64(encryptedString.getBytes());
            byte[] plainText = cipher.doFinal(encryptedText);
            decryptedText= new String(plainText);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return decryptedText;
	}
}
