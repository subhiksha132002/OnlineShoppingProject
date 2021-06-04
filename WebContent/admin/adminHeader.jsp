<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="../css/signup.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
	
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<!--Header-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<%
	String email = session.getAttribute("email").toString();
	%>
	<a class="navbar-brand" href="adminHome.jsp">Online Shopping</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item mr-3"><a class="nav-link"
				href="addNewProduct.jsp">Add New Product <i
					class="fas fa-plus-squ are"></i>
			</a></li>
			<li class="nav-item mr-3"><a class="nav-link"
				href="allProductEditProduct.jsp">All Products & Edit Products </a></li>
			<li class="nav-item mr-3"><a class="nav-link"
				href="messagesReceived.jsp">Messages Received </a></li>
			<li class="nav-itemmr-3"><a class="nav-link"
				href="ordersReceived.jsp">Orders Received </a></li>
			<li class="nav-item mr-3"><a class="nav-link"
				href="deliveredOrders.jsp">Delivered Orders</a></li>
			<li class="nav-item"><a class="nav-link" href="../Logout.jsp">Logout</a>
			</li>
		</ul>
	</div>
</nav>
<!--table-->