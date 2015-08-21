<%@ include file="defaultimport.jsp" %>
<!DOCTYPE html>
<html> 
	<head>
		<title>JSP for MainForm form</title>
	</head>
	<body class="container-fluid">
		<%@ include file="menubar.jsp" %>
		<div class="grid ">
			<div class="row cells12">
				<div class="cell"></div>
				<div class="cell colspan10  ">
			
					<div class="grid">
						<div class="row cells4">
						<!-- left menu -->
							<div class="cell colspan3 bg-grayLighter in-menu">
								<a class="shortcut-button  bg-lightBlue  fg-white">
								    <span class="icon mif-widgets"></span>
								    <span class="title ">Create</span>
								</a>
								<a class="shortcut-button  bg-emerald  fg-white">
								    <span class="icon mif-images"></span>
								    <span class="title ">Gallery</span>
								</a>
								<a class="shortcut-button  bg-brown  fg-white">
								    <span class="icon mif-users"></span>
								    <span class="title ">User</span>
								</a>
							</div>
						<!-- /left menu -->	
						<!-- right menu -->
							<div class="cell colspan1 bg-grayLighter in-menu-r" >
								<BR/><BR/><BR/><BR/><BR/><BR/><BR/><BR/>
								<BR/><BR/><BR/><BR/><BR/><BR/><BR/><BR/>
								<BR/><BR/><BR/><BR/><BR/><BR/><BR/><BR/>
								<BR/><BR/><BR/><BR/><BR/><BR/><BR/><BR/>
							</div>
						<!-- /right menu -->		
						</div>						
					</div>
				
				</div>
			</div>
		</div>
	</body>
</html>