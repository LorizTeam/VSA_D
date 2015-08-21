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
						<!-- menu -->
							<div class="cell colspan3 bg-grayLighter ">
							    <div id="accordion " data-close-any="true" class="accordion large-heading"  data-role="accordion">
							                
							        <div class="frame" >
							            <div class="heading"><h3>Content <small>Edit text in webpage</small></h3><span class="icon mif-bubbles"></span></div>
							   <!-- Content menu -->
							            <div class="content in">
							            
							            
							            </div>
							   <!-- Content menu -->
							        </div>
							        
							        <div class="frame gallery">	        
							            <div class="heading "><h3>Gallery <small>Detail all gallery</small></h3><span class="icon mif-images"></span></div>
							   <!-- Content menu -->
							            <div class="content in">
											

										</div>
							   <!-- Content menu -->
							        </div>
							        							     
							        <div class="frame">
							            <div class="heading "><h3>User <small>Manage user</small></h3><span class="icon mif-users"></span></div>
							   <!-- Content menu -->
							            <div class="content in">            
							            <h1>h1</h1>
							            <h2>h2</h2>
							            <h3>h3</h3>
							            <p>paragraph</p>
							            </div>
							   <!-- Content menu -->
							        </div>
							    </div>
							<script>
							    $(function(){
							        $("#accordion").accordion();
							    });
							</script>						
							</div>
						<!-- menu -->
						<!-- /left menu -->	
							<div class="cell bg-grayLighter ">
							<br/><br/><br/>all status in vsa group  <br/>
							-project
							<br/>
							-notification<br/>
							-last update<br/><br/><br/><br/><br/><br/>
							</div>
						</div>						
					</div>
				
				</div>
			</div>
		</div>
	</body>
</html>