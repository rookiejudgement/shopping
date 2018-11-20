 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
	background:rgba(123, 241, 203, 0.6);
}
.product li {
   float: left;
    width: 30.33%;
    padding: 5px;
    list-style-type: none;
    text-align: left;
}
li{
font-size:18px;
padding:10px;
margin-bottom:20px;
margin-left:5px;
border: 4px solid #5eaef3;
}
form{
	display:block;
	margin:100px auto;
}
input{
    padding: 10px;
    width: 60%;
}
</style>
<script type="text/javascript">
	function validateForm() {
		var x = document.forms["myForm"]["product"].value;
		if (x == "") {
			alert('Kindly enter any product');
			return false;
		}
		
	}

	function onLoadproductSearch() {
		document.forms["myForm"]["product"].focus();
	}
</script>
</head>
 <body align="center" onload="onLoadproductSearch()">
 <div>
 <h1 style="color:#45425f;">SHOPPING4FUN</h1>
 </div>
 <form action="getproduct" method="get" name="myForm">
		<input type="text" name="product" placeholder="Search For Product !" style="border:2px solid black"/>
		<input type="submit" value="SEARCH" onclick="return validateForm()" style="width: 100px;padding:12px;border:none;background:black;color:white;">
	</form>
 <div>
 <ol class="product">
  <ul><c:forEach items="${msg}" var="user" >
 <li>
 <span>Model Number : </span>
<span><c:out value="${user.pId}"/></span>
<br>
<span>Type : </span>
<span><c:out value="${user.pName}"/></span><br>
<span>Price : </span>
<span><c:out value="${user.pPrice}"/></span><br>
<span>Description : </span>
<span><c:out value="${user.pDescription}"/></span><br>
<span>Brand : </span>
<span><c:out value="${user.pCompany}"/></span><br>
 </c:forEach></li>
</ol>
</div>
</body>
</html>