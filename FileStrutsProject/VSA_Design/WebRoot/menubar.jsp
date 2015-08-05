	<!-- Add metro-ui CSS And JavaScript -->
	<link rel="stylesheet" href="metro-ui/build/css/metro.css">
	<link rel="stylesheet" href="metro-ui/build/css/metro-responsive.css">
	<link rel="stylesheet" href="metro-ui/build/css/metro-icons.css">
	<script type="text/javascript" src="metro-ui/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="metro-ui/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="metro-ui/build/js/metro.js"></script>
	<!-- Add metro-ui CSS And JavaScript End -->

	<% if(session.getAttribute("username") == null)
			response.sendRedirect("login.jsp");
	%>
		<div class="app-bar fixed-top navy" data-role="appbar">
	        <a class="app-bar-element branding" href="index.jsp">VSA Group</a>
	        <span class="app-bar-divider"></span>
	        <ul class="app-bar-menu">
	            <li data-flexorderorigin="0" data-flexorder="1"><a href="main.jsp">Main Dashboard</a></li>
	            <li data-flexorderorigin="1" data-flexorder="2" class="">
	                <a href="" class="dropdown-toggle">Project</a>
	                <ul class="d-menu" data-role="dropdown" style="display: none;">
	                    <li><a href="">New project</a></li>
	                    <li class="divider"></li>
	                    <li><a href="">Edit Project</a></li>
	                </ul>
	            </li>
	         <% if (session.getAttribute("userList") != null) {
					List userList = (List)session.getAttribute("userList");
					for (Iterator iter = userList.iterator(); iter.hasNext();) {
			  			DetailuserForm detailUser = (DetailuserForm) iter.next();
			  		
			  		if(detailUser.getPosition_name().equals("Admin")){
			  		
			  %>
	            <li data-flexorderorigin="2" data-flexorder="1" >
	            	<a href="" class="dropdown-toggle">Managed User</a>
	            	<ul class="d-menu" data-role="dropdown" style="display: none;">
	                    <li><a href="">Create User</a></li>
	                    <li class="divider"></li>
	                    <li><a href="">Edit User</a></li>
	                </ul>
	            </li>
	          <%} %>
	        </ul>
	        <div class="app-bar-element place-right">
				<button class="button rounded dropdown-toggle"><span class="mif-cog mif-1x"></span>&nbsp;
				
			  		<%=detailUser.getName()%>
			  	
				</button>
		            <div class="app-bar-drop-container padding10 place-right no-margin-top block-shadow fg-dark" data-role="dropdown" data-no-close="true" style="width: 220px; display: none;">
		                <h1 class="text-light">Position</h1>
		                <h1 class="text-light"><%=detailUser.getPosition_name()%></h1>

		                <a class="button" href="signout.do"><span class="mif-switch"></span>&nbsp;&nbsp;Signout</a>
		            </div>
	        </div>
            </div>
            	<%
			  		}
		  		}
				%>