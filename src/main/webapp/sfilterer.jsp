<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ST's OCTA - Applying Filter to Courses</title>
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
				Course Filter
			</div>
			<div class = "card-body">
				<form action = "sfiltered">
					<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
					<script type="text/javascript">
						$(function () {
							$("input[name='SID']").click(function () {
								if ($("#SidYes").is(":checked")) {
									$("#sid").removeAttr("disabled");
									$("#sidsym").removeAttr("disabled");
									$("#sid").focus();
								} else {
									$("#sid").attr("disabled", "disabled");
									$("#sidsym").attr("disabled", "disabled");
								}
							});
						});
						$(function () {
							$("input[name='StName']").click(function () {
								if ($("#SnameYes").is(":checked")) {
									$("#Sname").removeAttr("disabled");
									$("#Sname").focus();
								} else {
									$("#Sname").attr("disabled", "disabled");
								}
							});
						});
						$(function () {
							$("input[name='Stemail']").click(function () {
								if ($("#SemailYes").is(":checked")) {
									$("#Semail").removeAttr("disabled");
									$("#Semail").focus();
								} else {
									$("#Semail").attr("disabled", "disabled");
								}
							});
						});
					</script>
					<span>Filter by Student ID?</span>
					<label for="SidYes">
						<input type="radio" id="SidYes" name="SID" />
						Yes
					</label>
					<label for="SidNo">
						<input type="radio" id="SidNo" name="SID" />
						No
					</label>
					<br>Student ID(x):
					<div class="form-group">
						<input type="number" id="sid" class="form-control" name = "sid" disabled="disabled" />
						<label for="sidsym">Choose Symbol:</label>
						<select name="sidsym" id="sidsym" disabled="disabled">
							<option value="=">Equal to X(=)</option>
							<option value="<">Less Than X(&lt)</option>
							<option value=">">Greater Than X(&gt )</option>
							<option value="<=">Less than or Equal to(&lt =)</option>
							<option value=">=">Greater than or Equal to(&gt=)</option>
						</select>
					</div>
					<span>Filter by Student Name?</span>
					<label for="SnameYes">
						<input type="radio" id="SnameYes" name="StName" />
						Yes
					</label>
					<label for="SnameNo">
						<input type="radio" id="SnameNo" name="StName" />
						No
					</label>
					<br>Student Name:
					<div class="form-group">
						<input type="text" id="Sname" class="form-control" name = "sname" disabled="disabled" />
					</div>
					<span>Filter by Email?</span>
					<label for="SemailYes">
						<input type="radio" id="SemailYes" name="Stemail" />
						Yes
					</label>
					<label for="SemailNo">
						<input type="radio" id="SemailNo" name="Stemail" />
						No
					</label>
					<br>Email:
					<div class="form-group">
						<input type="email" id="Semail" class="form-control" name = "semail" disabled="disabled" />
					</div>
				</div>
				<div class = "card-body">
					<input type = "submit" class = "btn btn-primary w-100" value = "Filter" name = "" />
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