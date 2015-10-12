/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.smict.struts.action;

import java.util.ArrayList;
import java.util.List;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.Date;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import com.smict.struts.data.DBProject;
import com.smict.struts.data.DBuser;
import com.smict.struts.data.EncryptandDecrypt;
import com.smict.struts.data.Pictures;
import com.smict.struts.form.AfterchooseForm;

/** 
 * MyEclipse Struts
 * Creation date: 08-14-2015
 * 
 * XDoclet definition:
 * @struts.action path="/afterchoose" name="afterchooseForm" input="/afterchoose.jsp" scope="request" validate="true"
 */
public class AfterchooseAction extends Action {
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
		AfterchooseForm afterchooseForm = (AfterchooseForm) form;
		DBuser dbuser = new DBuser();
		EncryptandDecrypt clsEnDe = new EncryptandDecrypt();
		
		String alert = null;
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss-SSS");
		FileOutputStream outputStream = null;
		DBProject dbproject = new DBProject();
		Pictures cls_pic = new Pictures();
		
		String project_name = request.getParameter("tb_projectname"),
		   project_year = request.getParameter("tb_projectyear"),
		   bu_no = request.getParameter("slc_bu"),
		   pj_typeno = request.getParameter("slc_typepj"),
		   pj_no = request.getParameter("pj_no");
		
		if(!project_year.substring(0, 1).equals("y")){
			project_year = project_year;
		}
		// TODO Auto-generated method stub
		List testchk = new ArrayList();
		String forwardText = "";
		List<?> buList = null;
		List<?> Listforafterchoose = null;
		List<?> pj_typeList = null;
		
		HttpSession session = request.getSession();
		if(session.getAttribute("username") == null){
			forwardText = "nologin";
		}else{
			//process
			//Click Button upload--Start
			if(request.getParameter("upload") != null){
				try {
					if(afterchooseForm.getUploadedFile1().getFileName() != ""){
						Date date = new Date();
						
						   
						int namelength = afterchooseForm.getUploadedFile1().getFileName().length();
						String filePath = getServlet().getServletContext().getRealPath("/")+"upload\\"+project_name+"\\"+dateFormat.format(date)+afterchooseForm.getUploadedFile1().getFileName().substring(namelength-4, namelength);
						outputStream = new FileOutputStream(new File(filePath));
						outputStream.write(afterchooseForm.getUploadedFile1().getFileData());
						
						if(outputStream != null)
							outputStream.close();
						
						String pic_path = "upload/"+project_name+"/"+dateFormat.format(date)+afterchooseForm.getUploadedFile1().getFileName().substring(namelength-4, namelength);
						try {
							dbproject.insdetailpicpath_todb(pj_no, pic_path);
							
								
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					if(afterchooseForm.getUploadedFile2().getFileName() != ""){
						Date date = new Date();
						
						int namelength = afterchooseForm.getUploadedFile2().getFileName().length();
						String filePath = getServlet().getServletContext().getRealPath("/")+"upload\\"+project_name+"\\"+dateFormat.format(date)+afterchooseForm.getUploadedFile2().getFileName().substring(namelength-4, namelength);
						outputStream = new FileOutputStream(new File(filePath));
						outputStream.write(afterchooseForm.getUploadedFile2().getFileData());
						
						if(outputStream != null)
							outputStream.close();
						
						String pic_path = "upload/"+project_name+"/"+dateFormat.format(date)+afterchooseForm.getUploadedFile2().getFileName().substring(namelength-4, namelength);
						try {
							dbproject.insdetailpicpath_todb(pj_no, pic_path);
							
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					if(afterchooseForm.getUploadedFile3().getFileName() != ""){
						Date date = new Date();
						
						int namelength = afterchooseForm.getUploadedFile3().getFileName().length();
						String filePath = getServlet().getServletContext().getRealPath("/")+"upload\\"+project_name+"\\"+dateFormat.format(date)+afterchooseForm.getUploadedFile3().getFileName().substring(namelength-4, namelength);
						outputStream = new FileOutputStream(new File(filePath));
						outputStream.write(afterchooseForm.getUploadedFile3().getFileData());
						
						if(outputStream != null)
							outputStream.close();
						
						String pic_path = "upload/"+project_name+"/"+dateFormat.format(date)+afterchooseForm.getUploadedFile3().getFileName().substring(namelength-4, namelength);
						try {
							dbproject.insdetailpicpath_todb(pj_no, pic_path);
							
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					if(afterchooseForm.getUploadedFile4().getFileName() != ""){
						Date date = new Date();
						
						int namelength = afterchooseForm.getUploadedFile4().getFileName().length();
						String filePath = getServlet().getServletContext().getRealPath("/")+"upload\\"+project_name+"\\"+dateFormat.format(date)+afterchooseForm.getUploadedFile4().getFileName().substring(namelength-4, namelength);
						outputStream = new FileOutputStream(new File(filePath));
						outputStream.write(afterchooseForm.getUploadedFile4().getFileData());
						
						if(outputStream != null)
							outputStream.close();
						
						String pic_path = "upload/"+project_name+"/"+dateFormat.format(date)+afterchooseForm.getUploadedFile4().getFileName().substring(namelength-4, namelength);
						try {
							dbproject.insdetailpicpath_todb(pj_no, pic_path);
							
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					
					try {
						// ข้อมูลของ Dropdownlist Start
						buList = dbproject.bu_nameList();
						pj_typeList = dbproject.pj_typeList(bu_no);
						// ข้อมูลของ Dropdownlist End
						//ข้อมูลรายลเอียด Project และรูปภาพ Start
						Listforafterchoose = dbproject.afterchoose_edit(project_name);
						//ข้อมูลรายลเอียด Project และรูปภาพ End
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				request.setAttribute("buList", buList);
				request.setAttribute("slc_typepj", pj_typeList);
				request.setAttribute("Listforafterchoose", Listforafterchoose);
				forwardText = "success";
			}
			//Click Button upload--End
			
			
			//Click Button Submit
			if(request.getParameter("submit") != null){
				String[] picpath = request.getParameterValues("picpath");
				
//				String[] chk_picstatus = request.getParameterValues("chk_picstatus");
//				List chk_picstatus= new ArrayList();
				//วนเพื่อทำการ ลบ หรือว่าเปลี่ยนสถานะรูปภาพ
				for(int i = 0; i <picpath.length;i++){
					String chk_picstatus = request.getParameter("chk_picstatus"+i);
					String chkbtn_del = chkbtn_del = request.getParameter("chkbtn"+i);
					
						try {
							if(chkbtn_del != null){
								
								String keep_alert = cls_pic.Del_picture(picpath[i],pj_no,getServlet().getServletContext().getRealPath("/")+"upload\\");
								
								if(keep_alert != null){
									alert = keep_alert;
								}
								
							}else if(chk_picstatus == null){
								dbproject.disable_picstatus(picpath[i].toString());
								
							}else{
								dbproject.enable_picstatus(picpath[i].toString());
							}
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					
				}
				
				try {
					// ข้อมูลของ Dropdownlist Start
					String rdo = request.getParameter("rdo");
					buList = dbproject.bu_nameList();
					pj_typeList = dbproject.pj_typeList(bu_no);
					
					// ข้อมูลของ Dropdownlist End
					//อัพเดทข้อมูลรายลเอียด Project และรูปภาพ -- และนำไปแสดงที่หน้า afteredit Start รูปไหนที่มีการกดปุ่ม Radio button จะอัพเดทให้เป็น Head
					
					Listforafterchoose = dbproject.editproject(rdo, pj_no, project_name, project_year, bu_no, pj_typeno);
					
					//ข้อมูลรายลเอียด Project และรูปภาพ -- และนำไปแสดงที่หน้า afteredit End
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				request.setAttribute("buList", buList);
				request.setAttribute("slc_typepj", pj_typeList);
				request.setAttribute("Listforafterchoose", Listforafterchoose);
				request.setAttribute("alert", alert);
				forwardText = "success";
			}
			//Click Button Submit End
		//End Process	
		}
		return mapping.findForward(forwardText);
	}
}