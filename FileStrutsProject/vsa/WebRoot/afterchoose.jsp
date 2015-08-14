<%@ include file="defaultimport.jsp" %>
<%@ page import="com.smict.struts.form.BusinessForm" %>
<html> 
	<head>
		<title>For Change Detail Project</title>
	</head>
	<body>
	<%@ include file="menubar.jsp" %>
		<html:form action="/afterchoose">
		<div class="grid container page-content">
			<div class="row cells12 align-left">
				<div class="cell"></div>
	           	<div class="cell debug colspan10">
	           		<div class="row cells2">
	           			<div class="cell">
	           			
	           				Project Name <div class="input-control text success" data-role="input" >
											    <input type="text" class="form-control" name="tb_projectname" id="tb_projectname" placeholder="Project Name" required>
											    <button class="button helper-button clear"><span class="mif-cross"></span></button>
											</div>
						</div>
						<div class="cell" >
							Project Year <div class="input-control text success" data-role="input" >
											<input type="text" class="form-control" name="tb_projectyear" id="tb_projectyear" placeholder="Project Year" required>
											<button class="button helper-button clear"><span class="mif-cross"></span></button>
										</div>
									<%for(int i=1;i<=5;i++){
									%>
									<label class="switch">
										<input type="checkbox" name="chk<%=i%>">
										<span class="check"></span>
									</label>
									<input type="hidden" name="chk<%=i%> value="0" >
									<%
									} 
									%>
										<!--  -->
										    
                    	</div>
	           		</div>
	          	</div>
	          	<div class="cell"></div>
			</div>
		</div>
		
			<div class="row align-center">
				<button type="submit" name="submit" id="submit" class="button success">Submit</button>
			</div>
		</html:form>
	</body>
</html>

