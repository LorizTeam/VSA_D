	<%@ include file="cssinclude.jsp"%>
	<% if(session.getAttribute("username") == null)
			response.sendRedirect("login.jsp");
	%>
		<div class="app-bar fixed-top navy grid" data-role="appbar" style="margin-top:0;">
			<div class="row cells12">
			<div class="cell colspan11 offset1">
	        <a class="app-bar-element branding" href="index.jsp">VSA Group</a>
	        <span class="app-bar-divider"></span>
	        <ul class="app-bar-menu">
	            <li data-flexorderorigin="0" data-flexorder="1"><a href="main.jsp">Main Dashboard</a></li>
	            <li data-flexorderorigin="1" data-flexorder="1"><a href="nortifications.jsp">Notifications</a></li>
	            <li data-flexorderorigin="2" data-flexorder="2" class="">
	                <a href="" class="dropdown-toggle">Project</a>
	                <ul class="d-menu" data-role="dropdown" style="display: none;">
	                	<li><a href="award.jsp">Award Gallery</a></li>
	                	<li class="divider"></li>
	                    <li><a href="createprojectStart.do">New project</a></li>	                    
	                    <li><a href="editprojectStart.do">Edit Project</a></li>
	                </ul>
	            </li>
	         <% if (session.getAttribute("userList") != null) {
					List<?> userList = (List)session.getAttribute("userList");
					for (Iterator iter = userList.iterator(); iter.hasNext();) {
			  			UserForm detailUser = (UserForm) iter.next();
			  		
			  		if(detailUser.getPosition_name().equals("Admin")){
			  		
			  %>
	            <li data-flexorderorigin="3" data-flexorder="1" >
	            	<a href="" class="dropdown-toggle">Managed User</a>
	            	<ul class="d-menu" data-role="dropdown" style="display: none;">
	                    <li><a href="createuser.jsp">Create User</a></li>
	                    <li class="divider"></li>
	                    <li><a href="EditUser.jsp">Edit User</a></li>
	                </ul>
	            </li>
	          <%} %>
	        </ul>
	        <div class="app-bar-element place-right">
				<a class=" dropdown-toggle fg-white"><span class="mif-user"></span>&nbsp;
				
			  		<%=detailUser.getName()%>
			  	
				</a>
		            <div class="app-bar-drop-container padding10 place-right no-margin-top block-shadow fg-dark" data-role="dropdown" data-no-close="true" style="width: 220px; display: none;">
		               	<blockquote>
		               		<h3 class="text-light">Position</h3>	                
		              	  	<h3><small class="text-light"><%=detailUser.getPosition_name()%></small></h3>
		              	  	<a class="button danger bg-hover-darkRed" href="signout.do"><span class="mif-switch"></span>&nbsp;&nbsp;Signout</a>
		               	</blockquote>
		               

		                
		            </div>
	        </div>
	       	</div>
	       	</div>
            </div>
            	<%
			  		}
		  		}
				%>
				<br/><br/><br/><br/>
				