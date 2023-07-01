<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Add Teachers</title>
	<style type="text/css">
		.addTeachers {
		    width: 300px;
		    margin: 0 auto;
		    padding: 20px;
		    border: 1px solid #ccc;
		    border-radius: 4px;
		    background-color: #f9f9f9;
		    font-family: Arial, sans-serif;
		    margin-top: 200px;
		  }
		  
		  h1 {
		    text-align: center;
		  }
		  
		  form {
		    display: flex;
		    flex-direction: column;
		  }
		  
		  input[type="text"],
		  input[type="password"] {
		    margin-bottom: 10px;
		    padding: 8px;
		    border: 1px solid #ccc;
		    border-radius: 4px;
		    margin-top: 5px;
		  }
		  
		  input[type="submit"] {
		    padding: 8px 16px;
		    font-size: 14px;
		    font-weight: bold;
		    text-align: center;
		    text-decoration: none;
		    background-color: #4CAF50;
		    color: #fff;
		    border: none;
		    border-radius: 4px;
		    cursor: pointer;
		    margin-top: -10px;
		  }
		  
		  input[type="submit"]:hover {
		    background-color: #45a049;
		  }
	</style>
</head>
<body>

<script>
		function validateStudent(){
			var name = document.getElementById("name");
			var address = document.getElementById("address");
			var subject = document.getElementById("subject");
			
			if(name === ""){
				alert("Please Enter the Name");
				return false;
			}
			if(subject === ""){
				alert("Please Enter the Subject");
				return false;
			}
			
			return true;
		}
	</script>

	<div class="addTeachers">
	
		<h1>Add Teachers</h1>
	
		<form action="#" method="post" onSubmit="return validateStudent()">
			<label for="name">Name : </label>
			<input type="text" name="name" id="name"><br><br>
			
			<label for="subject">Subject : </label>
			<input type="text" name="subject" id="subject"><br><br>
			
			<input type="submit" name="submit" value="Add Teacher">
		</form>
	</div>

</body>
</html>