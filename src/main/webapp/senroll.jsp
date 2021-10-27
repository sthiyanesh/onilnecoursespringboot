<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <div class = "card text-center w-50 my-auto shadow">
            <div class = "card-header bg-primary text-white">

            </div>
            <div class = "card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                        <th>Course Name</th>
                        <th>Course Tutor</th>
                        <th>Course Fees</th>
                        <th>Course Duration</th>
                        <th>Open Course Page</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${courser}" var="courser">
						<tr>
						<td>${courser.crname}</td>
						<td>${courser.crtutor}</td>
                        <td>${courser.fees}</td>
						<td>${courser.duration}</td>
						<td><a href="http://localhost:8080/senrolled?crid=${courser.crid}&sid=${sid}" class="btn btn-info" role="button">Enroll Course</a></td>
						</tr>
					</c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        </div>
    </div>
</body>
</html>