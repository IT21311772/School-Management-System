<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Confirmation</title>
</head>
<body>

	<%
		String sid = request.getParameter("sid");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String grade = request.getParameter("grade");
	%>
	
	<h1>Delete Student Record</h1>
	<form action="delete" method="post">
		  <label for="sid">Student ID :</label>
		  <input type="text" id="sid" name="sid" value="<%= sid %>" readonly>
		  <br><br>
		  <label for="name">Name :</label>
		  <input type="text" id="name" name="name" value="<%= name %> " readonly>
		  <br><br>
		  <label for="address">Address :</label>
		  <input type="text" id="address" name="address" value="<%= address %> " readonly>
		  <br><br>
		  <label for="grade">Grade :</label>
		  <input type="text" id="grade" name="grade" value="<%= grade%> " readonly>
		  <br><br>
		  <input type="submit" name="submit" value="Delete">
	</form>

</body>
</html>