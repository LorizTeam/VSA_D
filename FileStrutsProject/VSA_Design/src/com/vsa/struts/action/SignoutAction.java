/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.vsa.struts.action;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.vsa.struts.form.MainForm;


/** 
 * MyEclipse Struts
 * Creation date: 08-05-2015
 * 
 * XDoclet definition:
 * @struts.action path="/signout" name="mainForm" input="/main.jsp" scope="request" validate="true"
 * @struts.action-forward name="success" path="/login.jsp"
 */
public class SignoutAction extends Action {
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
		MainForm mainForm = (MainForm) form;
		HttpSession session = request.getSession();
		// TODO Auto-generated method stub
		session.invalidate();
		return mapping.findForward("success");
	}
}