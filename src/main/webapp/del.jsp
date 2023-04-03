<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Employee</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

			<%
			
			try{
				int id = Integer.parseInt(request.getParameter("id"));
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Dinesh","root","1432");
				Statement st=con.createStatement();
				String q="delete from emp where id="+id;
				st.executeUpdate(q);
				
				
			
					
				}catch(Exception e){
					out.println("Exception:"+e.getMessage());
					e.printStackTrace();
				}
					%>
	
	<br>

	<div>
		

		<div class="container">
			<h3 class="text-center">Record Deleted</h3>
			<hr>
			<div class="container text-center">

				<a href="index.jsp" class="btn btn-success" >Home</a>
					
			</div>
			

</body>
</html>