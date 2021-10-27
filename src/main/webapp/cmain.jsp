<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ST's OCTA - Course Details</title>
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
			<h5 class="font-weight-bold text-uppercase mt-3 mb-4">${heading}</h5>
		</div>
		<div class = "card-body">
			<a href="http://localhost:8080/cfilter" class="btn btn-outline-warning" style="float:right" role="button">Apply Filter</a>
			<a href="http://localhost:8080/courses" class="btn btn-outline-warning" style="float:right" role="button">Reset Filter</a><br>
			<table class="table table-bordered">
				<thead>
					<tr>
					<th>Course ID</th>
					<th>Course Name</th>
					<th>Course Tutor</th>
					<th>Course Fee</th>
					<th>Course Duration(in Weeks)</th>
					<th>Edit</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${courser}" var="courser">
						<tr>
						<td>${courser.crid}</td>
						<td>${courser.crname}</td>
						<td>${courser.crtutor}</td>
						<td>${courser.fees}</td>
						<td>${courser.duration}</td>
						<td><a href="http://localhost:8080/coursedit?crid=${courser.crid}" class="btn btn-info" role="button">Edit</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="card-body">
			<a href="http://localhost:8080/addcourse" class="btn btn-info" role="button">Add new Course</a>
		</div>
	</div>
	</div>
</div>
</body>
</html>