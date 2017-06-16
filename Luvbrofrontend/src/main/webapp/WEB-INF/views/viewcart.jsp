<%@ taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix='c' uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
@media screen and (max-width: 300px) {
    .removebtn, .buynowbtn {
       width: 10%;
    }
}

</style>
</head>
<body>
 <tr>
  <th>IMAGE</th>
 <th>NAME</th>
 <th>PRICE </th>
  <th>Remove/Buy now</th>
 <th>Total</th>	
</tr>
<tr>
<c1:forEach items="${cartItems}" var="ci">

      <td><img src="<c:url value='/resource/images/${ci.getProduct().getP_id()}.jpg'/>",width=50px, height=20px></td>
      <td>${ci.getProduct().getP_name()}</td>
      <td>${ci.getProduct().getP_c()}</td>
      <td><a href="<c:url value='/Remove/${ci.getC_id()}'/>" > Remove</a>/<a href="<c1:url value='/Buy/${ci.getProduct().getP_id()}/${ci.getC_id()}'/>" > Buy now</a></td>
      <td>${gtotal}</td>
      </tr>
      </c1:forEach>
</body>
</html>