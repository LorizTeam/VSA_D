/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.smict.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.smict.struts.data.DBuser;
import com.smict.struts.form.CreateuserForm;
import java.util.*;

/** 
 * MyEclipse Struts
 * Creation date: 10-06-2015
 * 
 * XDoclet definition:
 * @struts.action path="/createuser" name="createuserForm" input="/form/createuser.jsp" scope="request" validate="true"
 */
public class CreateuserAction extends Action {
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
		CreateuserForm createuserForm = (CreateuserForm) form;
		DBuser dbuser = new DBuser();
		
		String firstname = request.getParameter(""),
				lastname = request.getParameter(""),
				username = request.getParameter(""),
				position =	request.getParameter("");
		
		if(firstname.equals("") || lastname.equals("")){
			
		}else if(username.equals("")){
			
		}else if(position.equals("")){
			
		}else{
			
			
			
		}
		
		return null;
	}
}