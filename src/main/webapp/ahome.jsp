<html>
<head>
	<title>ST's OCTA - Admin Home</title>
	<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
	<style>
		body {
		  background-image: url('images/background.jpg');
		  background-repeat: no-repeat;
		  background-attachment: fixed;  
		  background-size: cover;
		}
	</style>
</head>
<body>
	
	<div class = "container vh-100">
		<div class = "row justify-content-center h-100">
		<div class = "card text-center w-50 my-auto shadow">
			<div class = "card-header bg-primary text-white">
				<h5 class="font-weight-bold text-uppercase mt-3 mb-4">Welcome Back, ${courser.aname}</h5>
			</div>
			<div class = "card-body">
				<a href="http://localhost:8080/students" class="btn btn-default" role="button">Student Detail</a>
				<a href="http://localhost:8080/courses" class="btn btn-default" role="button">Course Detail</a>
			</div>
			<div class = "card-body">
				<a href="http://localhost:8080/addadmin" class="btn btn-default" role="button">Add Admin</a>
			</div>
			</div>
			</div>
</body>
</html>