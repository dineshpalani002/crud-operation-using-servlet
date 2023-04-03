<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<%
			
			
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Dinesh","root","1432");
				Statement st=con.createStatement();
				int id = Integer.parseInt(request.getParameter("id"));
				ResultSet rs=st.executeQuery("select * from emp where id="+id);
				
				
				while(rs.next()){
	%>
				
<div class ="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
				<h1 class = "text-center"> Update Employee </h1>
				<div class = "card-body">
					<form action="Update" method="POST">
						<div class ="form-group">
							<label> Employee ID </label>
							<input
							type = "number"
							name = "id"
							
							class = "form-control"
							value = "<%=rs.getInt("id") %>"
							/>
						</div>
						
						<div class ="form-group">
							<label> Employee Name </label>
							<input
							type = "text"
							name = "name"
							
							class = "form-control"
							value="<%=rs.getString("name") %>" 
							/>
						</div>
						
						<div class ="form-group">
							<label> Employee Salary </label>
							<input
							type = "number"
							name = "salary"
							
							class = "form-control"
							value="<%=rs.getInt("salary") %>" 
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
				<% } %>
</body>
</html>