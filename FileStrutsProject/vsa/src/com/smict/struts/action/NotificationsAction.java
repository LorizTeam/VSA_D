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

import com.smict.struts.data.NortificationsData;
import com.smict.struts.form.NortificationsForm;

/** 
 * MyEclipse Struts
 * Creation date: 10-20-2015
 * 
 * XDoclet definition:
 * @struts.action path="/notifications" name="nortificationsForm" scope="request" validate="true"
 */
public class NotificationsAction extends Action {
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
		String forwardText = "";
		String bu_no,cus_name,cus_email,cus_message ="";
		bu_no = (String)request.getParameter("bu_no");
		cus_name = (String)request.getParameter("cus_name");
		cus_email = (String)request.getParameter("cus_email");
		cus_message = (String)request.getParameter("cus_message");
		NortificationsData notfi = new NortificationsData();
		notfi.Insert_Notifications(bu_no, cus_name, cus_email, cus_message);
		if(bu_no.equals("1")){
			forwardText = "vsa";
		}else if(bu_no.equals("2")){
			forwardText = "wvs";
		}
		return mapping.findForward(forwardText);
	}
}