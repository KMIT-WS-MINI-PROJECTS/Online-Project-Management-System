

import java.io.IOException;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class dlogin
 */
@WebServlet("/dlogin.do")
public class dlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String u1=request.getParameter("uname");
	     String p1=request.getParameter("pname");
	     Connection conn = null;
		  Statement stmt=null;
		   String USER="root";
			PreparedStatement st=null;
			 String name="";
		   ResultSet rs = null;
		    PrintWriter out =response.getWriter();
		    try{
		      Class.forName("com.mysql.jdbc.Driver"); 
		      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject",USER,"");
		      stmt=conn.createStatement();
		      //out.println("redirected");
			   
		      rs=stmt.executeQuery("select * from dlogin");
		      while(rs.next())
		      {
		      String u=rs.getString("uname");
		      String p=rs.getString("password");		
		   //   out.println(u+" "+p);
		     // out.println(u1+" "+p1);
		      
		      if(u.equals(u1) && p.equals(p1)) {
		            st=conn.prepareStatement("select dname from ddetails where uname=(?)");
		                 st.setString(1, u);
		                 rs=st.executeQuery();
		                 while(rs.next()){
		                 name=rs.getString("dname");}
		                 st=conn.prepareStatement("insert into checkrole(name,role) values(?,?)");
		                 st.setString(1, name);
		                 st.setString(2, "developer");
		                 st.executeUpdate();
                       response.sendRedirect("second.jsp");
		       }
		       }
		      	out.println("enter correct password");	
		    }
		    catch(Exception e) {e.printStackTrace();}
		    finally {
		    	try {
		    		rs.close();
		    		stmt.close();
		    		st.close();
		    		conn.close();
		    	}
		    	catch(Exception e) {
		    		e.printStackTrace();
		    	}
		    }	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("resource")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.setContentType("text/html;charset=UTF-8");

	}

}
