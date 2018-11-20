<!DOCTYPE html>
<head>
<script type="text/javascript">
	function validateForm() {

		var x = document.forms["myForm"]["product"].value;
		if (x == "") {
			alert('pls give me the product name');
			return false;
		}
		
	}

	function onLoadproductSearch() {
		document.forms["myForm"]["product"].focus();
	}
</script>
</head>
<body align="center" onload="onLoadproductSearch()">
	<form action="getproduct" method="get" name="myForm">
		<input type="text" name="product" placeholder="search for product" />
		<input type="submit" value="search" onclick="return validateForm()" style="padding:10px;">
	</form>

</body>
</html>
