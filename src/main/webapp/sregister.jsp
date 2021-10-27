<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ST's OCTA - Create New Course</title>
<script type="text/javascript">
	function validate() {
		var spw = document.getElementById('box3').value;
		var respw = document.getElementById('box4').value;
		if(spw==respw){
			return true;
		}
		alert("The Value in Password and Confirm Pasword are not Same.");
		return false;
	}
</script>
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
		<div class = "card text-center w-25 my-auto shadow">
			<div class = "card-header bg-primary text-white">
				Add New Register
			</div>
			<div class = "card-body">
				<form action = "sreg">
					<div class = "form-group">
						<label for = "box1" >Student Name</label>
						<input type= "text" id = "box1" class = "form-control" name = "sname" required />
					</div>
					<div class = "form-group">
						<label for = "box2" >Email ID</label>
						<input type= "email" id = "box2" class = "form-control" name = "semail" required />
					</div>
					<div class = "form-group">
						<label for = "box3" >Password</label>
						<input type= "password" id = "box3" class = "form-control" name = "spw" required />
					</div>
					<div class = "form-group">
						<label for = "box4" >Confirm Password</label>
						<input type= "password" id = "box4" class = "form-control" name = "respw" required />
					</div>
				</div>
				<div class = "card-body">
					<input type = "submit" class = "btn btn-primary w-100" value = "Create" name = "" />
				</div>
				</form>
			<div class = "card-footer">
				<small>&copy; Student DBMS</small>
			</div>
		</div>
		</div>
	</div>

</body>
</html>