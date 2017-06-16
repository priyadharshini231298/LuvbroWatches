
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
	<html>		
<body>
	
	<div class="span11">

	<div class="col-md-12  col-sm-12  col-xs-8 "
	style="background: #fff; padding: 30px;">

	<div class="col-md-6 col-sm-6 col-xs-12">
		<h3 class="text-center">Billing Address</h3>

		<hr>
			<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
				<form:input type="text" path="user.U_email_addr" name="email" class="form-control input-sm"					
				placeholder="Emailid" disabled="true"/> 
			</div>
		</div>
		<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
				<form:input type="number" name="mono" path="user.U_phoneno" disabled="true"
			class="form-control input-sm" placeholder="Mobile no"/>
			</div>
		</div>
		

		<div class="col-xs-12 col-sm-12 col-md-12">
			<div class="form-group">
				<form:input class="form-control" path="user.location" disabled="true"
					placeholder="House name and number"/>                                                
                                            
			</div>
		</div>

		<div class="col-xs-12 col-sm-4 col-md-4">
			<div class="form-group">
				<form:input type="text" disabled="true"
					class="form-control input-sm" placeholder="country" path="user.state" />
			</div>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<div class="form-group">
				<form:input type="text" disabled="true"
					class="form-control input-sm" placeholder="city" path="user.city"/>
			</div>
		</div>

		<input class="coupon_question" type="checkbox" name="coupon_question"
			value="1"> <span class="item-text">Check Shipping
			address</span>
	</div>


	<div class="col-md-6 shipping col-sm-6 col-xs-12">
		<h3 class="text-center">shipping Address</h3>

		<hr>
	<c:url value="/orderConfirm" var="a"/>
		<form:form action="${a}" method="post" commandName="shipping">
		
	
<!-- 		<div class="col-xs-6 col-sm-6 col-md-6"> -->
<!-- 			<div class="form-group"> -->
<%-- 				<form:input type="text" name="first_name" id="first_name" --%>
<%-- 					class="form-control input-sm" placeholder="First Name" path="firstname"/> --%>
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		<div class="col-xs-6 col-sm-6 col-md-6"> -->
<!-- 			<div class="form-group"> -->
<%-- 				<form:input type="text" name="last_name" id="last_name" --%>
<%-- 					class="form-control input-sm" placeholder="Last Name" path="lastname"/> --%>
<!-- 			</div> -->
<!-- 		</div> -->

		<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
				<form:input type="text" name="first_name" id="first_name"
					class="form-control input-sm" placeholder="Email id" path="s_email"/>
			</div>
		</div>
		<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
				<form:input type="text" name="Mobile_no" 
					class="form-control input-sm" placeholder="House no" path="s_houseno"/>
			</div>
		</div>

<!-- 		<div class="col-xs-12 col-sm-12 col-md-12"> -->
<!-- 			<div class="form-group"> -->
<%-- 				<form:input type="text" class="form-control" path="houseno"/>                                                 --%>
                                           
<!-- 			</div> -->
<!-- 		</div> -->

		<div class="col-xs-12 col-sm-4 col-md-4">
			<div class="form-group">
				<form:input type="text"
					class="form-control input-sm" placeholder="country" path="s_country"/>
			</div>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<div class="form-group">
				<form:input type="text" 
					class="form-control input-sm" placeholder="city" path="s_city"/>
			</div>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<div class="form-group">
				<form:input type="text"
					class="form-control input-sm" placeholder="pincode" path="s_pincode" />
			</div>
		</div>
	</div>
	<div class="col-md-12">
		<input type="submit" class="btn btn-primary pull-right" value="Continue">
	</div>
   </form:form>
</div>
</div></div>

  </body>
</html>
