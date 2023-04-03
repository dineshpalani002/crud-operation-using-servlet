<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

	
	<br>

	<div>
		

		<div class="container">
			<h3 class="text-center">Employee Record</h3>
			<hr>
			<div class="container text-left">

				<a href="add.jsp" class="btn btn-success">Add
					New Employee</a>
					
			</div>
			<br>
			<div class="container">
			<h3 class="text-center">List of Employees</h3>
			<hr>
			<table class="table table-bordered" align="center">
			<tr>
			<th>Employee Id</th>
			<th>Name</th>
			<th>Salary</th>
			</tr>
			
			
			<%
			
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Dinesh","root","1432");
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from emp");
				
				while(rs.next()){
					%>
					
					<tr>
					<td><%=rs.getInt("id") %></td>
					<td><%=rs.getString("name") %></td>
					<td><%=rs.getInt("salary") %></td>
					<td><a href="update.jsp?id=<%=rs.getInt("id") %>" class="btn btn-success">Update</a>
					<a href="del.jsp?id=<%=rs.getInt("id") %>" class="btn btn-danger">Delete</a></td>
					
					
					</tr>
					
					<%
					
				}
			}catch(Exception e){
				out.println("Exception:"+e.getMessage());
				e.printStackTrace();
			}
				
				
				
			
			
			
			%>
			</table>
</body>
</html>