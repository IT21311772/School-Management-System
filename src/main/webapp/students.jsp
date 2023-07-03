<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
</head>
<body>

	<h1>Student Details</h1>
	<form action="addStudents.jsp" method="post">
		<input type="submit" name="add" value="Add Students">
	</form>
	
	<table>
		<c:forEach var="students" items="${stDetails }">
			<c:set var="sid" value="${students.sid}"/>
			<c:set var="name" value="${students.name}"/>
			<c:set var="address" value="${students.address}"/>
			<c:set var="grade" value="${students.grade}"/>
		</c:forEach>
		
		<tr>
			<th>Student ID</th>
			<th>Student Name</th>
			<th>Student Address</th>
			<th>Student Grade</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<tr>
			<td>${students.sid}</td>
			<td>${students.name}</td>
			<td>${students.address}</td>
			<td>${students.grade}</td>
			<td><a href="${stupdate}"><input type="button" name="update" value="Update"></a></td>
			<td><a href="${stdelete}"><input type="button" name="delete" value="Delete"></a></td>
		</tr>
	</table>

</body>
</html>