<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Students</title>
	<style type="text/css">
		.addStudents {
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
			var grade = document.getElementById("grade");
			
			if(name === ""){
				alert("Please Enter the Name");
				return false;
			}
			if(address === ""){
				alert("Please Enter the Address");
				return false;
			}
			if(grade === ""){
				alert("Please Enter the Grade");
				return false;
			}
			
			return true;
		}
	</script>

	<div class="addStudents">
	
		<h1>Add Students</h1>
	
		<form action="insert" method="post" onSubmit="validateStudent()">
			<label for="name">Name : </label>
			<input type="text" name="name" id="name"><br><br>
			
			<label for="address">Address : </label>
			<input type="text" name="address" id="address"><br><br>
			
			<label for="grade">Grade : </label>
			<input type="text" name="grade" id="grade"><br><br>
			
			<input type="submit" name="submit" value="Add Student">
		</form>
	</div>

</body>
</html>