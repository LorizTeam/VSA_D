/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.smict.struts.action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.smict.struts.data.DBuser;

/** 
 * MyEclipse Struts
 * Creation date: 10-09-2015
 * 
 * XDoclet definition:
 * @struts.action path="/afterchoose_edituser" name="userForm" input="/afterchoose_edituser.jsp" scope="request" validate="true"
 */
public class Afterchoose_edituserAction extends Action {
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
		
		
		String username = request.getParameter("tb_username"),
		name = request.getParameter("tb_firstname"),
		surname = request.getParameter("tb_lastname"),
		position_no = request.getParameter("slc_position"),
		chk_resetpassword = request.getParameter("chk_resetpassword"),
		forwardText = "success";
		try {
			name = new String (name.getBytes("ISO-8859-1"),"UTF-8");
			surname = new String (surname.getBytes("ISO-8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			if(request.getParameter("delete_user") != null){
				dbuser.Delete_user(username);
			}else{
				if(!dbuser.EditUser(username, name, surname, position_no, chk_resetpassword)){
					request.setAttribute("alert","ไม่พบ User ที่ต้องการแก้ไข");
					forwardText = "false";
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapping.findForward(forwardText);
	}
}