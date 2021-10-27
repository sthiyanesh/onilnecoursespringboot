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
				<form action = "cfiltered">
					<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
					<script type="text/javascript">
						$(function () {
							$("input[name='CrID']").click(function () {
								if ($("#CridYes").is(":checked")) {
									$("#crid").removeAttr("disabled");
									$("#cridsym").removeAttr("disabled");
									$("#crid").focus();
								} else {
									$("#crid").attr("disabled", "disabled");
									$("#cridsym").attr("disabled", "disabled");
								}
							});
						});
						$(function () {
							$("input[name='CourName']").click(function () {
								if ($("#CrnameYes").is(":checked")) {
									$("#Crname").removeAttr("disabled");
									$("#Crname").focus();
								} else {
									$("#Crname").attr("disabled", "disabled");
								}
							});
						});
						$(function () {
							$("input[name='TrName']").click(function () {
								if ($("#TutornameYes").is(":checked")) {
									$("#Tutorname").removeAttr("disabled");
									$("#Tutorname").focus();
								} else {
									$("#Tutorname").attr("disabled", "disabled");
								}
							});
						});
						$(function () {
							$("input[name='fee']").click(function () {
								if ($("#FeesYes").is(":checked")) {
									$("#Fees").removeAttr("disabled");
									$("#feessym").removeAttr("disabled");
									$("#Fees").focus();
								} else {
									$("#Fees").attr("disabled", "disabled");
									$("#feessym").attr("disabled","disabled");
								}
							});
						});
						$(function () {
							$("input[name='time']").click(function () {
								if ($("#DurationYes").is(":checked")) {
									$("#Duration").removeAttr("disabled");
									$("#durationsym").removeAttr("disabled");
									$("#Duration").focus();
								} else {
									$("#Duration").attr("disabled", "disabled");
									$("#durationsym").attr("disabled","disabled");
								}
							});
						});
					</script>
					<span>Filter by Course ID?</span>
					<label for="CridYes">
						<input type="radio" id="CridYes" name="CrID" />
						Yes
					</label>
					<label for="CridNo">
						<input type="radio" id="CridNo" name="CrID" />
						No
					</label>
					<br>Course ID(x):
					<div class="form-group">
						<input type="number" id="crid" class="form-control" name = "crid" disabled="disabled" />
						<label for="cridsym">Choose Symbol:</label>
						<select name="cridsym" id="cridsym" disabled="disabled">
							<option value="=">Equal to X(=)</option>
							<option value="<">Less Than X(&lt)</option>
							<option value=">">Greater Than X(&gt )</option>
							<option value="<=">Less than or Equal to(&lt =)</option>
							<option value=">=">Greater than or Equal to(&gt=)</option>
						</select>
					</div>
					<span>Filter by Course Name?</span>
					<label for="CrnameYes">
						<input type="radio" id="CrnameYes" name="CourName" />
						Yes
					</label>
					<label for="CrnameNo">
						<input type="radio" id="CrnameNo" name="CourName" />
						No
					</label>
					<br>Course Name:
					<div class="form-group">
						<input type="text" id="Crname" class="form-control" name = "coursename" disabled="disabled" />
					</div>
					<span>Filter by Tutor Name?</span>
					<label for="TutornameYes">
						<input type="radio" id="TutornameYes" name="TrName" />
						Yes
					</label>
					<label for="TutornameNo">
						<input type="radio" id="TutornameNo" name="TrName" />
						No
					</label>
					<br>Tutor Name:
					<div class="form-group">
						<input type="text" id="Tutorname" class="form-control" name = "crtutorname" disabled="disabled" />
					</div>
					<span>Filter by Fees?</span>
					<label for="FeesYes">
						<input type="radio" id="FeesYes" name="fee" />
						Yes
					</label>
					<label for="FeesNo">
						<input type="radio" id="FeesNo" name="fee" />
						No
					</label>
					<br>Fees:
					<div class="form-group">
						<input type="number" id="Fees" class="form-control" name = "fees" disabled="disabled" />
						<label for="feessym">Choose Symbol:</label>
						<select name="feessym" id="feessym" disabled="disabled">
							<option value="=">Equal to X(=)</option>
							<option value="<">Less Than X(&lt)</option>
							<option value=">">Greater Than X(&gt )</option>
							<option value="<=">Less than or Equal to(&lt=)</option>
							<option value=">=">Greater than or Equal to(&gt=)</option>
						</select>
					</div>
					<span>Filter by Duration?</span>
					<label for="DurationYes">
						<input type="radio" id="DurationYes" name="time" />
						Yes
					</label>
					<label for="DurationNo">
						<input type="radio" id="DurationNo" name="time" />
						No
					</label>
					<br>Duration
					<div class="form-group">
						<input type="number" id="Duration" class="form-control" name = "duration" disabled="disabled" />
						<label for="durationsym">Choose Symbol:</label>
						<select name="durationsym" id="durationsym" disabled="disabled">
							<option value="=">Equal to X(=)</option>
							<option value="<">Less Than X(&lt)</option>
							<option value=">">Greater Than X(&gt )</option>
							<option value="<=">Less than or Equal to(&lt=)</option>
							<option value=">=">Greater than or Equal to(&gt=)</option>
						</select>
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