<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ST's OCTA - Create New Admin</title>
<script type="text/javascript">
		function validate() {
			var pass = document.getElementById('box4').value;
			var repass = document.getElementById('box5').value;
			if(pass!=repass){
				alert('Values in the Password and Repassword Filed are not Matching');
				return false;
			}
			return true;
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
				Add New Admin
			</div>
			<div class = "card-body">
				<form action = "adda" onsubmit = "return(validate());">
					<div class = "form-group">
						<label for = "box1" >Admin ID</label>
						<input type= "number" id = "box1" class = "form-control" name = "aid" required />
					</div>
					<div class = "form-group">
						<label for = "box2" >Admin Name</label>
						<input type= "text" id = "box2" class = "form-control" name = "aname" required />
					</div>
					<div class = "form-group">
						<label for = "box3" >Admin Email</label>
						<input type= "email" id = "box3" class = "form-control" name = "aemail" required />
					</div>
					<div class = "form-group">
						<label for = "box4" >Admin Password</label>
						<input type= "password" id = "box4" class = "form-control" name = "apw" required />
					</div>
					<div class = "form-group">
						<label for = "box5" >Admin Retype Password</label>
						<input type= "password" id = "box5" class = "form-control" name = "repass" required />
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