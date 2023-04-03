<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class ="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
				<h1 class = "text-center"> Add Employee </h1>
				<div class = "card-body">
					<form action="Insert" method="POST">
						<div class ="form-group">
							<label> Employee ID </label>
							<input
							type = "number"
							name = "id"
							
							class = "form-control"
							placeholder="Enter Employee ID" 
							/>
						</div>
						
						<div class ="form-group">
							<label> Employee Name </label>
							<input
							type = "text"
							name = "name"
							
							class = "form-control"
							placeholder="Enter Employee Name" 
							/>
						</div>
						
						<div class ="form-group">
							<label> Employee Salary </label>
							<input
							type = "number"
							name = "salary"
							
							class = "form-control"
							placeholder="Enter Employee Salary" 
							/>
						</div>
						
						<div class = "box-footer">
							<button type="submit" class = "btn btn-primary">
								Submit
							</button>
						</div>
					</form>
				</div>
				</div>
</body>
</html>