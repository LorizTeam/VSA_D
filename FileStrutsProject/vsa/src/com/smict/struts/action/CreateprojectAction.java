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
import com.smict.struts.form.CreateprojectForm;

/** 
 * MyEclipse Struts
 * Creation date: 08-13-2015
 * 
 * XDoclet definition:
 * @struts.action path="/createproject" name="createprojectForm" input="createproject.jsp" scope="request" validate="true"
 */
public class CreateprojectAction extends Action {
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
		CreateprojectForm createprojectForm = (CreateprojectForm) form;// TODO Auto-generated method stub
		return null;
	}
}