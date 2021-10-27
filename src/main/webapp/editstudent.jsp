<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ST's OCTA - Edit Student Detail</title>
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
				Edit Student Profile
			</div>
			<div class = "card-body">
				<form action = "sedit">
					<div class = "form-group">
						<label for = "box1" >Student ID</label>
						<input type= "number" id = "box1" class = "form-control" name = "sid" value="${courser.sid}" readonly required />
					</div>
					<div class = "form-group">
						<label for = "box2" >Student Name</label>
						<input type= "text" id = "box2" class = "form-control" name = "sname" value="${courser.sname}" required />
					</div>
					<div class = "form-group">
						<label for = "box3" >Email</label>
						<input type= "email" id = "box3" class = "form-control" name = "semail" value="${courser.semail}" required />
					</div>
					<div class = "form-group">
						<label for = "box4" >Password</label>
						<input type= "text" id = "box4" class = "form-control" name = "spw" value="${courser.spw}" required />
					</div>
					<div class = "form-group">
						<input type="hidden" id="box5" class="form-control" name="a" value=${a}>
					</div>
				</div>
				<div class = "card-body">
					<input type = "submit" class = "btn btn-primary w-100" value = "Edit" name = "" />
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