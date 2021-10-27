<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ST's OCTA - Create New Course</title>
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
				Add New Course
			</div>
			<div class = "card-body">
				<form action = "cadd">
					<div class = "form-group">
						<label for = "box1" >Course ID</label>
						<input type= "number" id = "box1" class = "form-control" name = "crid" required />
					</div>
					<div class = "form-group">
						<label for = "box2" >Course Name</label>
						<input type= "text" id = "box2" class = "form-control" name = "crname" required />
					</div>
					<div class = "form-group">
						<label for = "box3" >Tutor Name</label>
						<input type= "text" id = "box3" class = "form-control" name = "crtutor" required />
					</div>
					<div class = "form-group">
						<label for = "box4" >Fees</label>
						<input type= "number" id = "box4" class = "form-control" name = "fees" required />
					</div>
					<div class = "form-group">
						<label for = "box5" >Duration</label>
						<input type= "number" id = "box5" class = "form-control" name = "duration" required />
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