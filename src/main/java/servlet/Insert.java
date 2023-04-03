package servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import com.mysql.cj.xdevapi.Statement;

/**
 * Servlet implementation class Insert
 */
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Insert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	          
	    int id=Integer.parseInt(request.getParameter("id"));  
	    String name=request.getParameter("name");  
	    int sal=Integer.parseInt(request.getParameter("salary")); 
	          
	    try {
	    	Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Dinesh","root","1432");
			PreparedStatement pstat = con.prepareStatement("insert into emp(id,name,salary) values(?,?,?);");
			pstat.setInt(1,id);
			pstat.setString(2,name);
			pstat.setInt(3,sal);
			
			
			pstat.executeUpdate();
			
			 
			 RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");  
		     rd.include(request, response); 
	    }catch(Exception e) {
	    	 out.println(e);
	    	 RequestDispatcher rd=request.getRequestDispatcher("/add.jsp");  
		     rd.include(request, response); 
	    }
	}

}
