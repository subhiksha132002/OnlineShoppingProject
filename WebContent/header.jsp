<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/signup.css" />
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
<%String email=session.getAttribute("email").toString(); %>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item mr-3"><a class="nav-link" href="home.jsp">Home</a>
				</li>
				<li class="nav-item mr-3"><a class="nav-link" href="myCart.jsp">My
						Cart</a></li>
				<li class="nav-item mr-3"><a class="nav-link" href="myOrders.jsp">My
						Orders</a></li>
				<li class="nav-item mr-3"><a class="nav-link"
					href="changeDetails.jsp">Change Details</a></li>
				<li class="nav-item mr-3"><a class="nav-link" href="messageUs.jsp">Message
						Us</a></li>
				<li class="nav-item mr-3"><a class="nav-link" href="about.jsp">About</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="Logout.jsp">Logout</a>
				</li>
			</ul>
			<form action="searchHome.jsp" method="post"
				class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="text" name="search"
					placeholder="Search" aria-label="Search" />
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">
					Search</button>
			</form>
		</div>
	</nav>
<!--table-->