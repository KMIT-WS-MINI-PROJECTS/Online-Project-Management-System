

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class name
 */
@WebServlet("/name.do")
public class name extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public name() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 Connection conn = null;
		  Statement stmt=null;
		   String USER="root";
			//PreparedStatement st=null;
			ResultSet rs = null;
			  PrintWriter out =response.getWriter();
			  String name="";  
			  try{
			      Class.forName("com.mysql.jdbc.Driver"); 
			      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject",USER,"");
			      stmt=conn.createStatement();
			      rs=stmt.executeQuery("select name from checkrole");
			      while(rs.next())
			      {
			    	  name=rs.getString("name");
			      }
			      out.println(name);
			    }
			    catch(Exception e) {}
	}

}
