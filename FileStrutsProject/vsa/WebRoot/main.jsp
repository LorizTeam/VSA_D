
<%@page import="com.smict.struts.data.NortificationsData"%>
<%@page import="com.smict.struts.form.NortificationsForm"%>
<%@page import="com.smict.struts.data.DBProject"%>
<%@page import="com.smict.struts.form.BusinessForm"%>
<%@page import="com.smict.struts.form.AwardForm"%>
<%@page import="com.smict.struts.data.DBaward"%>
<%@ include file="defaultimport.jsp" %>
<!DOCTYPE html>
<html> 
	<head>
		<title>Main Backend</title>		
	</head>
	<body class="container-fluid fg-white tile-area-scheme-grayed">&nbsp; 
		<%@ include file="menubar.jsp" %>
		
		
		<div class="grid ">
			<div class="row cells12">
				<div class="cell colspan4  offset1">
					<div class="row"><h3>Project Gallery</h3></div>	
					<div class="row">			
						<div class="tile-wide bg-darkCyan" data-role="tile">
							<div class="tile-content ">
								<div class="carousel" data-role="carousel" data-controls="false" data-markers="true">
			                        
			                        <%
									DBProject dbproject = new DBProject();
									List new5_project = dbproject.projectList("5");
									Iterator iter = new5_project.iterator();
									while(iter.hasNext()){
										BusinessForm businssForm = (BusinessForm) iter.next();
										//pj_no = parameter rdo
										//example /editprojectStart.do?rdo=<%=businssForm.getPj_no()
										businssForm.getPj_no();
									%><form class="slide" action="editproject.do" method="POST">			
										<button style="width:100%; padding:0; border:none;" type="submit"><img class="img-responsive" src="<%=businssForm.getPic_path() %>"/></button>
										<input type="hidden" name="rdo" value="<%=businssForm.getPj_no() %>"/>
										<input type="hidden" name="submit" value="<%=businssForm.getPj_no() %>"/>								
									  </form>
									<%
									}
									 %>			
						 			
		                        </div>
	                        </div>
						</div>
			           
			            <a href="createprojectStart.do" class="tile-small bg-blue fg-white" data-role="tile">
			            	<div class="tile-content iconic slide-up-2">
			            		<span class="mif-folder-plus icon"></span>
			            		<div class="slide-over op-cyan text-large padding10 align-center">
			                    	Add
			                    </div>
			            	</div>
			            </a>
			            <a href="editprojectStart.do" class="tile-small bg-green fg-white" data-role="tile">
			            	<div class="tile-content iconic slide-up-2">
			            		<span class="mif-cog icon"></span>
			            		<div class="slide-over op-emerald text-large padding10 align-center">
			                    	Edit
			                    </div>
			            	</div>
			            </a>
		            </div>
		    <!-- Award gallery-------------------------- -->
		    
		            <div class="row"><h3>Award Gallery</h3></div>
		            <div class="row">			
						<div class="tile-wide bg-darkCyan" data-role="tile">
							<div class="tile-content ">
								<div class="carousel" data-role="carousel" data-controls="false" data-markers="true">
								<%
									DBaward dbaward = new DBaward();
									List new5_award = dbaward.select_award("","5");
									Iterator iter_award = new5_award.iterator();
									while(iter_award.hasNext()){
										AwardForm awardForm = (AwardForm) iter_award.next();
										//pj_no = parameter rdo
										//example /editprojectStart.do?rdo=<%=businssForm.getPj_no()
										
								%>			                        
			                        <form class="slide" action="award.jsp" method="POST">			
										<button style="width:100%; padding:0; border:none;" type="submit">
											<img class="img-responsive" src="<%=awardForm.getAwardpicpath() %>"/>
										</button>							
									  </form>
								<%
									}
								%>							 			
		                        </div>
	                        </div>
						</div>
			           

		            </div>	 
		            
		    <!-- Award gallery-------------------------- -->     
				</div>
				<div class="cell colspan4">
					<div class="row"><h3>Notification</h3></div>
				<%
					NortificationsData noti_data = new NortificationsData();
					List notiList = noti_data.CountNotifications_NotRead("","1");
					Iterator iterate = notiList.iterator();
					while(iterate.hasNext()){
					
					NortificationsForm notiForm = (NortificationsForm) iterate.next();
					
						if(notiForm.getBu_no().equals("1")){
					 %>	
					<a href="nortifications.jsp?bu_no=1" class="tile bg-grayLight fg-white" data-role="tile">
						<div class="tile-content iconic slide-left-2">														
							<img  class="icon img-responsive" src="images/menulogo/vsa.png"/>
							<div class="slide-over bg-red">
								<span class="icon"><%=notiForm.getCount_noti_id() %></span>
							</div>													
							
						</div>
					</a>
					<%
						}else if (notiForm.getBu_no().equals("2")){
					%>
		            <a href="nortifications.jsp?bu_no=2" class="tile bg-grayLight fg-white" data-role="tile">
		            	<div class="tile-content iconic slide-down-2">
							<img  class="icon img-responsive" src="images/menulogo/wvs.png"/>
							<div class="slide-over bg-orange">
								<span class="icon"><%=notiForm.getCount_noti_id() %></span>
							</div>	
						</div>
					</a>
					<%
						}else if (notiForm.getBu_no().equals("3")){
					%>
					<a href="nortifications.jsp?bu_no=3" class="tile  bg-grayLight fg-white" data-role="tile">
		           		<div class="tile-content iconic slide-up-2">
							<img  class="icon img-responsive" src="images/menulogo/vsct.png"/>
							<div class="slide-over bg-darkRed">
								<span class="icon"><%=notiForm.getCount_noti_id() %></span>
							</div>	
						</div>
		           	</a>
					
		            <%
						}else if (notiForm.getBu_no().equals("4")){
					%>
		            <a href="nortifications.jsp?bu_no=4" class="tile  bg-grayLight fg-white" data-role="tile">
		            	<div class="tile-content iconic slide-right-2">
							<img  class="icon img-responsive" src="images/menulogo/plz.png"/>
							<div class="slide-over bg-blue">
								<span class="icon"><%=notiForm.getCount_noti_id() %></span>
							</div>							
						</div>
		            </a>
		            <%
		            	}
		            }
		            %>

				</div>
				<div class="cell colspan3">
					<div class="row"><h3>User Management</h3></div>	
		            <a href="EditUser.jsp" class="tile bg-darkCyan fg-white"  data-role="tile">
		            	<div class="tile-content iconic">
		            		<span class="mif-users icon"></span>   		
		            	</div>
		            </a>
		            <a href="createuser.jsp" class="tile bg-lightOlive fg-white" data-role="tile">
		            	<div class="tile-content iconic slide-up-2">
		            		<span class="mif-user-plus icon"></span>
		            		<div class="slide-over op-lightOlive text-large padding10 align-center">
		                    	Add
		                    </div>
		            	</div>
		            </a>
				</div>
			</div>
			<br/><br/>
			<div class="row cells12">
				<div class="cell offset9 align-right">
				<h5>website :</h5>
				</div>
				<div class="tile-area-controls cell colspan2">
				    <a style="margin:0 5px 0 0;" href="index.jsp" target="_blank" class="square-button bg-transparent fg-white bg-hover-dark no-border">VSA</a>
				    <a style="margin:0 5px 0 0;" href="wvs.jsp" target="_blank" class="square-button bg-transparent fg-white bg-hover-dark no-border">WVS</a>
				    <a style="margin:0 5px 0 0;" href="#"  class="square-button bg-transparent fg-white bg-hover-dark no-border">VSCT</a>
				    <a style="margin:0 5px 0 0;" href="#"  class="square-button bg-transparent fg-white bg-hover-dark no-border">PLZ</a>
			    </div>
			</div>
		</div>
		
		
		
		
	</body>
</html>