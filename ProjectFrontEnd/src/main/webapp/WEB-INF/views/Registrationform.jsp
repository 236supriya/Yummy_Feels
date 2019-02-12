<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript"
		src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
		<link href="<c:url value='/resources/css/formerror.css'></c:url>" rel="stylesheet">
		<link href="<c:url value='/resources/css/registration.css'></c:url>" rel="stylesheet">
<script type="text/javascript">
function fillShippingAddress(form){
	if(form.checkbox.checked==true){
		//Copy all the values from billingaddress and assign values in shippingaddress
		form["shippingAddress.apartmentnumber"].value=form["billingAddress.apartmentnumber"].value
		form["shippingAddress.streetname"].value=form["billingAddress.streetname"].value
		form["shippingAddress.city"].value=form["billingAddress.city"].value
		form["shippingAddress.state"].value=form["billingAddress.state"].value
		form["shippingAddress.country"].value=form["billingAddress.country"].value
		form["shippingAddress.zipcode"].value=form["billingAddress.zipcode"].value
	}
	else{
		form["shippingAddress.apartmentnumber"].value=""
		form["shippingAddress.streetname"].value=""
		form["shippingAddress.city"].value=""
		form["shippingAddress.state"].value=""
		form["shippingAddress.country"].value=""
		form["shippingAddress.zipcode"].value=""
	}
}

$(document).ready(function(){
	$('#form').validate({
		rules:{
			"firstname":{required:true},
			"lastname":{required:true},
			"phonenumber":{required:true,
				           number:true,
				           minlength:10,
				           maxlength:10},
		    "user.email":{required:true,email:true},
		    "user.password":{required:true,minlength:5,maxlength:10},
		    "billingAddress.apartmentnumber":{required:true},
		    "billingAddress.streetname":{required:true},
		    "billingAddress.city":{required:true},
		    "billingAddress.state":{required:true},
		    "billingAddress.country":{required:true},
		    "billingAddress.zipcode":{required:true,number:true}
		},
		messages:{
			"firstname":{required:"firstname is mandatory"},
		    "lastname":{required:"lastname is required"},
		    "phonenumber":{required:"phonenumber is mandatory",
		    	           number:"Invalid phonenumber.. only digits are allowed",
		    	           minlength:"Invalid phonenumber",
		    	           maxlength:"Invalid phonenumber"},
		    "user.email":{required:"Email is mandatory",
		    	          email:"Enter valid email address"
		    	          },
		    "user.password":{required:"Please enter password",
		    	             minlength:"Minimum 5 characters should be entered ",
		    	             maxlength:"Maximum length is only 10 "
		    	             }
		}
	})
})


</script>		
		
</head>
<body>
<div class="container-fluid">
<pre>
<c:url value="/all/register" var="url"></c:url>
<form:form action="${url }" method="post" modelAttribute="customer" id="form">
<center><h3>Already Have Account <a href="<c:url value='/login'></c:url>">login </a>now</h3></center>
<table>
<tr><td class="col-sm-6"></td><td><h2>CUSTOMER DETAILS</h2></td></tr>
<tr>
<td class="col-sm-7" rowspan="3">
<img align="center" class="img-rounded" src="<c:url value="/resources/images/form.png"></c:url>" width="450" height="350"/>
</td>
<td>
<form:label path="firstname"><h3>Enter Firstname</h3> </form:label> </td>   
<td><form:input path="firstname" id="firstname" class="form-control"/></td>
</tr>
<tr><td>
<form:label path="lastname"><h3>Enter Lastname</h3> </form:label></td>   
<td><form:input path="lastname" id="lastname" class="form-control"/></td>
</tr>
<tr><td>
<form:label path="phonenumber"><h3>Enter Phonenumber</h3> </form:label>   </td>
<td ><form:input path="phonenumber" id="phonenumber" class="form-control"/></td>
</tr>
</table>
<hr>
<table>
<tr><td class="col-sm-6"></td><td><h2>LOGIN CREDENTIALS</h2></td></tr>
<tr>
<td class="col-sm-7" rowspan="3">
<img align="center" class="img-rounded" src="<c:url value="/resources/images/form2.jpg"></c:url>" width="450" height="350"/>
</td>
<td>
<form:label path="user.email"><h3>Enter Email</h3> </form:label> </td>          
<td><form:input path="user.email" type="email" id="user.email" class="form-control"/>
<span style="color:red">${errorMessage }</span></td>
</tr>
<tr><td>
<form:label path="user.password"><h3>Enter Password</h3> </form:label> </td>
<td> 
<form:input path="user.password" type="password" id="user.password" class="form-control"/></td>
</tr>
<tr><td>
<form:hidden path="user.enabled" value="true"/></td>
<td><form:hidden path="user.authorities.role" value="ROLE_USER"></form:hidden></td>
</tr>
</table>
<hr>

<table>
<tr><td class="col-sm-5"></td><td><h2>BILLING ADDRESS</h2></td></tr>
<tr>
<td class="col-sm-7" rowspan="6">
<img align="center" class="img-rounded" src="<c:url value="/resources/images/form3.jpg"></c:url>" width="500" height="450"/>
</td>
<td>
<form:label path="billingAddress.apartmentnumber"><h3>Enter Apt. No.</h3></form:label></td>
<td><form:input path="billingAddress.apartmentnumber" id="billingAddress.apartmentnumber" class="form-control"/></td>
</tr>
<tr>
<td><form:label path="billingAddress.streetname"><h3>Enter Streetname</h3></form:label></td>                                                        	  
<td><form:input path="billingAddress.streetname" id="billingAddress.streetname" class="form-control"/></td>
</tr>
<tr>
<td>
<form:label path="billingAddress.city"><h3>Enter City</h3></form:label></td>                                
<td><form:input path="billingAddress.city" id="billingAddress.city" class="form-control"/></td>
</tr>
<tr>
<td>
<form:label path="billingAddress.state"><h3>Enter State</h3></form:label></td>                              
<td><form:input path="billingAddress.state" id="billingAddress.state" class="form-control"/></td>
</tr>
<tr>
<td>
<form:label path="billingAddress.country"><h3>Enter Country</h3></form:label></td>			              
<td><form:input path="billingAddress.country" id="billingAddress.country" class="form-control"/></td>
</tr>
<tr>
<td>
<form:label path="billingAddress.zipcode"><h3>Enter Zipcode</h3>  </form:label></td>                          
<td><form:input path="billingAddress.zipcode" id="billingAddress.zipcode" class="form-control"/></td>
</tr>
</table>
<hr>
<table>
<tr><td class="col-sm-6"></td><td><h2>SHIPPING ADDRESS</h2></td></tr>
<tr>
<td class="col-sm-6" rowspan="8">
<img align="center" class="img-rounded" src="<c:url value="/resources/images/form4.jpg"></c:url>" width="500" height="350"/>
</td>
<td><h4>Check this box, if shipping address is <br>same as billing address</h4><input type="checkbox" onclick="fillShippingAddress(this.form)" id="checkbox">
</td>
</tr>
<tr><td>
<form:label path="shippingAddress.apartmentnumber"><h3>Enter Apt. No.</h3></form:label></td>
<td><form:input path="shippingAddress.apartmentnumber" class="form-control"/></td>
</tr>
<tr>
<td><form:label path="shippingAddress.streetname"><h3>Enter Streetname</h3></form:label></td>
<td><form:input path="shippingAddress.streetname" class="form-control"/></td>
</tr>
<tr><td>
<form:label path="shippingAddress.city"><h3>Enter City</h3></form:label></td>
<td><form:input path="shippingAddress.city" class="form-control"/></td>
</tr>
<tr><td>
<form:label path="shippingAddress.state"><h3>Enter State</h3></form:label></td>
<td><form:input path="shippingAddress.state" class="form-control"/></td>
</tr>
<tr><td>
<form:label path="shippingAddress.country"><h3>Enter Country</h3></form:label></td>
<td><form:input path="shippingAddress.country" class="form-control"/></td>
</tr>
<tr><td>
<form:label path="shippingAddress.zipcode"><h3>Enter Zipcode</h3></form:label></td>
<td><form:input path="shippingAddress.zipcode" class="form-control"/></td>
</tr>
<tr>
<td>
<input type="submit" value="REGISTER" class="btn btn-success btn-lg"></td>
<td></td>
</tr>
</table>
</form:form>
</pre>
</div>
<div class="container"></div>
</body>

</html>

<%@ include file="footer.jsp"%>
