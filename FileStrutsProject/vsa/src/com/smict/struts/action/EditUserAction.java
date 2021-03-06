/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.smict.struts.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.smict.struts.data.DBuser;
import com.smict.struts.form.LoginForm;
/** 
 * MyEclipse Struts
 * Creation date: 10-08-2015
 * 
 * XDoclet definition:
 * @struts.action path="/editUser" name="userForm" input="/edituser.jsp" scope="request" validate="true"
 */
public class EditUserAction extends Action {
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
		DBuser dbuser = new DBuser();
		List<?> detailuserList = null;
		String forwardText ="success";
		String username = request.getParameter("rdo");
		try {
			detailuserList =dbuser.checkuser(username, "");
			if(detailuserList != null){
				request.setAttribute("detailuserList",detailuserList);
			}else{
				request.setAttribute("alert","ไม่พบ User ที่ต้องการแก้ไข");
				forwardText = "false";
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