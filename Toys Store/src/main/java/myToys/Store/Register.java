package myToys.Store;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/myrs")
public class Register extends HttpServlet {
	
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
    	PrintWriter out = resp.getWriter();
    	
        String myname = req.getParameter("name1");
        String myemail = req.getParameter("email1");
        String mypass = req.getParameter("pass1");
        String mygender = req.getParameter("gender");
		
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/toyregister", "root", "Systempss");
			
            PreparedStatement ps = con.prepareStatement("INSERT INTO register VALUES (?, ?, ?, ?)");
			
            ps.setString(1, myname);
            ps.setString(2, myemail);
            ps.setString(3, mypass);
            ps.setString(4, mygender);
			
            int i = ps.executeUpdate();
            if(i > 0) {
                req.setAttribute("uname", myname);
                req.setAttribute("uemail", myemail);
                req.setAttribute("ugender", mygender);

                RequestDispatcher rd = req.getRequestDispatcher("/profile.jsp");
                rd.forward(req, resp);  
            }

            
            else {
            	resp.setContentType("text/html");
            	out.print("<h1>user not registered due to some error</h1>");
            	
            	RequestDispatcher rd = req.getRequestDispatcher("/Register.jsp");
            	rd.include(req, resp);
            }
			
        } 
        
        catch(Exception e) {
            e.printStackTrace();
            
        }
    }
}
