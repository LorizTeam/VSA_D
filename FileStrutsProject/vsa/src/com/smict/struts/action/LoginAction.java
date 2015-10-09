/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.smict.struts.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.smict.struts.form.LoginForm;
import com.smict.struts.data.DBuser;
import com.smict.struts.data.EncryptandDecrypt;

/** 
 * MyEclipse Struts
 * Creation date: 08-13-2015
 * 
 * XDoclet definition:
 * @struts.action path="/login" name="loginForm" input="login.jsp" scope="request" validate="true"
 */
public class LoginAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		LoginForm loginForm = (LoginForm) form;
		DBuser dbuser = new DBuser();
		String forwardText= "";
		HttpSession session = request.getSession();
		EncryptandDecrypt EncAndDec = new EncryptandDecrypt();
		// TODO Auto-generated method stub
		
		String username = request.getParameter("InputUsername"),password = request.getParameter("InputPassword");
		
		try {
			
			String Encryptpassword = EncAndDec.EncryptReturnString(password);
			List userList = dbuser.checkuser(username,Encryptpassword);
			if(userList.size() >= 1){
				
				if(dbuser.CheckUserPasswordEasy(Encryptpassword)){
					forwardText = "easypassword";
					session.setAttribute("username", username);
					session.setAttribute("userList", userList);
					session.setAttribute("alert","0");
				}else{
					forwardText = "success";
					session.setAttribute("username", username);
					session.setAttribute("userList", userList);
					session.setAttribute("alert","0");
				}
			}else{
				forwardText = "unsuccess";
				session.setAttribute("alert","1");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapping.findForward(forwardText);
	}
}