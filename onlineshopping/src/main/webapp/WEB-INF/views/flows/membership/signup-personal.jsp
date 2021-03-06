<%@include file="../flows-shared/header.jsp" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>			
	<div class="container">
		
		
		<div class="row">
			
			<div class="col-md-6 col-md-offset-3">
				
				<div class="panel panel-primary">
				
					<div class="panel-heading">
						<h4>Sign Up - Personal</h4>
					</div>
					
					<div class="panel-body">
										
						<sf:form
							method="POST"
							modelAttribute="user"
							class="form-horizontal"
							id="registerForm"
						>
						
							
							<div class="form-group">
								<label class="control-label col-md-4">First Name</label>
								<div class="col-md-8">
									<sf:input type="text" path="firstName" class="form-control"
										placeholder="First Name" name="firstName" />
									<sf:errors path="firstName" cssClass="help-block" element="em"/> 
								</div>
							</div>


							<div class="form-group">
								<label class="control-label col-md-4">Last Name</label>
								<div class="col-md-8">
									<sf:input type="text" path="lastName" class="form-control"
										placeholder="Last Name" name="lastName"/>
									<sf:errors path="lastName" cssClass="help-block" element="em"/> 
								</div>
							</div>
						
							<div class="form-group">
								<label class="control-label col-md-4">Email</label>
								<div class="col-md-8">
									<sf:input type="email" path="email" class="form-control"
										placeholder="abc@zyx.com" name="email"/>
									<sf:errors path="email" cssClass="help-block" element="em"/> 									
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4">Contact Number</label>
								<div class="col-md-8">
									<sf:input type="text" path="contactNumber" class="form-control"
										placeholder="XXXXXXXXXX" maxlength="10" name="contactNumber"/>
									<sf:errors path="contactNumber" cssClass="help-block" element="em"/> 
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-4">Password</label>
								<div class="col-md-8">
									<sf:input type="password" path="password" name="password" id="password" class="form-control"
										placeholder="Password" />
									<sf:errors path="password" cssClass="help-block" element="em"/> 
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-4">Confirm Password</label>
								<div class="col-md-8">
									<sf:input type="password" path="confirmPassword" class="form-control"
										placeholder="Re-type password" name="re-password"/>
									<sf:errors path="confirmPassword" cssClass="help-block" element="em"/>										 
								</div>
							</div>
							
	<div class="form-group">
		<label class="control-label col-md-4">Select Role</label>
		<div class="col-md-8">
			<label class="radio-inline">
				<sf:radiobutton path="role" value="USER" checked="checked"/> User 				
			</label>
			<label class="radio-inline">
				<sf:radiobutton path="role" value="SUPPLIER"/> Supplier
			</label>
		</div>
	</div>							

							<div class="form-group">
								<div class="col-md-offset-4 col-md-8">
									<button type="submit" name="_eventId_billing" class="btn btn-primary" id="submit">
										Next - Billing <span class="glyphicon glyphicon-chevron-right"></span>
									</button>																	 
								</div>
							</div>
						
						
						</sf:form>					
					
					
					</div>
				
				
				</div>
			
			
			</div>
		
		
		</div>
		
		
	</div>

<%@include file="../flows-shared/footer.jsp" %>		
	<!-- jQuery -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/jquery.validate.js"></script>
<script>
$(document).ready(function() {
	$("#registerForm").validate({
		rules : {
			"firstName" : {
				required : true,
				lettersonly: true,
				minlength : 3,
				maxlength : 23
				 
			},
			"email" : {
				required : true,
				email : true
			},
			"contactNumber" : {
				required : true,
				minlength : 10,
				maxlength : 10,
				digits : true
			},
			"lastName" : {
				required : true,
				lettersonly: true
			},
			"password" : {
				required : true,
				minlength : 6
			},
			"re-password" : {
				required : true,
				equalTo : "#password",
				minlength : 6
			}
			

		},
		messages : {
			"firstName" : "First name should contain only alphabets should be 3-23 letters",
			"email" : "Enter valid email address.",
			"contactNumber" : "Enter Valid Phone Number",
			"lastName" : "Last Name should contain only alphabets",
			"password" : "Password length should be minimum 6 ",
			"re-password" : "Password not matches"
		},
		submitHandler : function(form) {
			
			
				form.submit();
			
		}

	});

	jQuery.validator.addMethod("lettersonly", function(value, element) {
		return this.optional(element) || /^[a-z\s]+$/i.test(value);
		}, "Only alphabetical characters");
});


</script> 