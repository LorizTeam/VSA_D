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

import com.smict.struts.data.DBProject;
import com.smict.struts.form.UploadForm;

/** 
 * MyEclipse Struts
 * Creation date: 08-13-2015
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 */
public class CreateprojectStartAction extends Action {
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
		// TODO Auto-generated method stub
		UploadForm createprojectForm = (UploadForm) form;
		String forwardText = "";
		HttpSession session = request.getSession();
		if(session.getAttribute("username") == null){
			forwardText = "nologin";
		}else{
			DBProject dbproject = new DBProject();
			// TODO Auto-generated method stub
			try {
				List buList = dbproject.bu_nameList();
				request.setAttribute("buList", buList);
				forwardText = "success";
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return mapping.findForward(forwardText);
	}
}