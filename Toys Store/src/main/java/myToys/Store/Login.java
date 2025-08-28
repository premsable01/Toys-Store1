package myToys.Store;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/mylogin")
public class Login extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		String myemail = req.getParameter("email1");
		String mypass = req.getParameter("pass1");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/toyregister","root","Systempss");
			
			PreparedStatement ps = con.prepareStatement("select * from register where email=? and password=?");
			
			ps.setString(1, myemail);
			ps.setString(2, mypass);
	
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				
				HttpSession session = req.getSession();
				session.setAttribute("my_name", rs.getString("name"));
				session.setAttribute("my_namee", rs.getString("email"));
				session.setAttribute("my_nameee", rs.getString("gender"));
				
				RequestDispatcher rd = req.getRequestDispatcher("/myprofile.jsp");
				rd.forward(req, resp);  
			}
			else {
				out.print("<h4 style='color:red;'>Emal id and passworrd didn't match..<h4>");
				RequestDispatcher rd = req.getRequestDispatcher("/loginpage.jsp");
				rd.include(req, resp);
			}
		}
		
		catch(Exception e) {
			 e.printStackTrace();		}
	}
}

