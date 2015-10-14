<%@ include file="defaultimport.jsp" %>
<!DOCTYPE html>
<html> 
	<head>
		<title>Main Backend</title>		
	</head>
	<body class="container-fluid fg-white tile-area-scheme-grayed">
		<%@ include file="menubar.jsp" %>
		
		
		<div class="grid ">
			<div class="row cells12">
				<div class="cell colspan4  offset1">
					<div class="row"><h3>Project Gallery</h3></div>					
					<a href="#" class="tile-wide bg-darkCyan" data-role="tile">
						<div class="tile-content ">
							<div class="carousel" data-role="carousel" data-controls="false" data-markers="true">
		                        <div class="slide"><img src="images/a1.jpg"></div>
		                        <div class="slide"><img src="images/a2.jpg"></div>
		                        <div class="slide"><img src="images/a3.jpg"></div>
		                        <div class="slide"><img src="images/a4.jpg"></div>
		                        <div class="slide"><img src="images/a5.jpg"></div>
	                        </div>
                        </div>
					</a>
		           
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
				<div class="cell colspan4">
					<div class="row"><h3>Notification</h3></div>	
					<a href="nortifications.jsp?bu_no=1" class="tile bg-grayLight fg-white" data-role="tile">
						<div class="tile-content iconic slide-left-2">														
							<img  class="icon img-responsive" src="images/menulogo/vsa.png"/>
							<div class="slide-over bg-red">
								<span class="icon">5</span>
							</div>													
							
						</div>
					</a>
		            <a href="nortifications.jsp?bu_no=2" class="tile bg-grayLight fg-white" data-role="tile">
		            	<div class="tile-content iconic slide-down-2">
							<img  class="icon img-responsive" src="images/menulogo/wvs.png"/>
							<div class="slide-over bg-orange">
								<span class="icon">5</span>
							</div>	
						</div>
					</a>
					<a href="nortifications.jsp?bu_no=4" class="tile  bg-grayLight fg-white" data-role="tile">
		            	<div class="tile-content iconic slide-up-2">
							<img  class="icon img-responsive" src="images/menulogo/plz.png"/>
							<div class="slide-over bg-blue">
								<span class="icon">5</span>
							</div>							
						</div>
		            </a>
		            <a href="nortifications.jsp?bu_no=3" class="tile  bg-grayLight fg-white" data-role="tile">
		           		<div class="tile-content iconic slide-right-2">
							<img  class="icon img-responsive" src="images/menulogo/vsct.png"/>
							<div class="slide-over bg-darkRed">
								<span class="icon">5</span>
							</div>	
						</div>
		           	</a>
		            

				</div>
				<div class="cell colspan3">
					<div class="row"><h3>User Management</h3></div>	
		            <a href="EditUser.jsp" class="tile bg-darkCyan fg-white"  data-role="tile">
		            	<div class="tile-content iconic">
		            		<span class="mif-users icon"></span>   		
		            	</div>
		            </a>
		            <a href="createuser.jsp" class="tile-small bg-lightOlive fg-white" data-role="tile">
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