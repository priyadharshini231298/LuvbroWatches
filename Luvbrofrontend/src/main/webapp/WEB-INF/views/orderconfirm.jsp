
<html>
<head>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


 </head>
 <body>
 
  <div class="container">
  <div class="well well-big" >
 
  

                                       
<!--                                             <div class="box payment-method"> -->
											<center>
                                                <h4>Billing Address</h4>
                                                <table class="table" style="border: 1px solid black; border-collapse: collapse;">
                                    
                                             <tr style="border: 1px solid black; border-collapse: collapse;padding: 15px">  <td style="border: 1px solid black; border-collapse: collapse;"> <p>State: </p></td>
                                             <td style="border: 1px solid black; border-collapse: collapse;"> <p>${billing.b_State} </p></td></tr>
                                              <tr style="border: 1px solid black; border-collapse: collapse;"> <td style="border: 1px solid black; border-collapse: collapse;"> <p>City: </p></td>
                                              <td style="border: 1px solid black; border-collapse: collapse;"> <p>${billing.getB_City()} </p></td></tr>
<!--                                                 <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"><p>Landmark: </p></td> -->
<%--                                                 <td style="border: 1px solid black; border-collapse: collapse;"><p>${billing.getB_Landmark()} </p></td></tr> --%>
                                               <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"> <p>House Number: </p></td>
                                               <td style="border: 1px solid black; border-collapse: collapse;"> <p>${billing.getB_Houser_Number() } </p></td></tr>
<!--                                                 <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"><p>Pin Code :</p></td> -->
<%--                                                 <td style="border: 1px solid black; border-collapse: collapse;"><p>${billing.getB_pincode()}</p></td></tr> --%>
                                                 <br></center>
                                           </table>
                                        </div>
                                        <div class="col-sm-6">
<!--                                             <div class="box payment-method"> -->
											<center>
                                                <h4>Shipment Address</h4>
                                               <table class="table" style="border: 1px solid black; border-collapse: collapse;">
                                                <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"><p>Email:</td><td style="border: 1px solid black; border-collapse: collapse;">${shipping.getS_email()} .</p></td></tr>
                                                <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"><p>City:</td><td style="border: 1px solid black; border-collapse: collapse;">${shippingAddress.getS_city()} .</p></td></tr>
                                               <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"> <p>Country:</td><td style="border: 1px solid black; border-collapse: collapse;">${shippingAddress.getS_country()} .</p></td></tr>
                                               <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"> <p>House Number:</td><td style="border: 1px solid black; border-collapse: collapse;">${shippingAddress.getS_houseno()} .</p></td></tr>
                                                <tr style="border: 1px solid black; border-collapse: collapse;"><td style="border: 1px solid black; border-collapse: collapse;"><p>Pin Code :</td><td style="border: 1px solid black; border-collapse: collapse;">${shippingAddress.getS_pincode()}</p></td></tr>
                                                
                                            
                                            </div>
                                        </div>
</center>
                                        
                                        </div>
                                    </div>
									
                                    <!-- /.row -->
									<div class="content">
									<div class="row">
									<div class="col-lg-8 col-lg-offset-2">
									<table style="border: 1px solid black" >
    <thead style="border: 1px solid black">
      <tr style="background-color: #eee">
      <th style="border: 1px solid black">Product Image</th>
        <th style="border: 1px solid black">Product Name</th>
<!--         <th>Description</th> -->
        <th style="border: 1px solid black">Category Name</th>
        <th style="border: 1px solid black">Seller Name</th>
        <th style="border: 1px solid black">Price</th>
      </tr>
    </thead>
    <tbody>
   
    <c1:if test="${prot!=null}">
      <tr>
        <td style="border: 1px solid black"><img src="<c:url value='/resource/images/${prot.getP_id()}.jpg'/>" width=150px height=200px></td>
        <td style="border: 1px solid black">${prot.getP_name()}</td>
<%--         <td>${product.getDes()}</td> --%>
        <td style="border: 1px solid black">${prot.getCategory().getC_name()}</td>
        <td style="border: 1px solid black">${prot.getSupplier().getS_name()}</td>
        <td style="border: 1px solid black">${prot.getP_c()}</td>
      </tr>
      </c1:if>
    <c1:if test="${prot==null}">
     <c1:forEach items="${cartItems}" var="c1">
      <tr>
        <td style="border: 1px solid black"><img src="<c:url value='/resource/images/${c1.getProduct().getP_id()}.jpg'/>"></td>
        <td style="border: 1px solid black">${c1.getProduct().getP_name()}</td>
<%--         <td>${c1.getproduct.getDes()}</td> --%>
        <td style="border: 1px solid black">${c1.getProduct().getCategory().getC_name()}</td>
        <td style="border: 1px solid black">${c1.getProduct().getSupplier().getS_name()}</td>
        <td style="border: 1px solid black">${c1.getProduct().getP_c()}</td>
      </tr>
      </c1:forEach>
      </c1:if>
   

  </tbody>
 </table>
<%--      <p calss="pull-left">Total price=Rs${prot.getPrice()}</p> --%>
			<h2> Order will Be deliverde to You with in 7 busisness days.....THANKYOU</h2>						
			
                                
                                

    </div>

    



</body>

</html>