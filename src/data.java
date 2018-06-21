import java.io.*;
import java.util.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class data
 */
@WebServlet("/data.do")
public class data extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public data() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    Connection conn;
	    Statement stmt;
	    ResultSet rs;
	    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	    static final String DB_URL = "jdbc:mysql://localhost:3306/miniproject";
	    static final String USER = "root";
	    static final String PASS = "";
	       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
	   Statement stmt = null;
		PreparedStatement st;
	   ResultSet rs = null;String sql;
	    PrintWriter out =response.getWriter();
	    String name="",role="",actionname="";
	    try{
	      DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	      out.println("Connecting to database...");

	      conn = DriverManager.getConnection(DB_URL,USER,PASS);
	      out.println("Creating statement...");
	      
	      stmt=conn.createStatement();
	      out.println("statement created ...");
		      sql="select name,role from checkrole";
    	  rs=stmt.executeQuery(sql);
      while(rs.next()){
      name = rs.getString("name");
      role = rs.getString("role");
       out.println(" name : " + name);out.println(" role : " + role);
      }
      if(role.equals("developer")) {
    	  out.println("hi");
    	  st=conn.prepareStatement("select aname from actiondetails where dname=(?)");
    	  st.setString(1,name);
    	  rs=st.executeQuery();
    	  rs.next();
    		  actionname=rs.getString("aname");
    		  out.println(" aname : " + actionname);
        	  out.println("hi");
    		  st=conn.prepareStatement("select status from statuscheck where aname=(?)");
        	  st.setString(1,actionname);
        	  rs=st.executeQuery();
    	  rs.next();
    	  String status=rs.getString("status");
    	  out.println(" status : " + status);
    	  out.println("hi");
          int i= stmt.executeUpdate("delete from checkrole");
          out.println(i);
      }
	      conn.close();
	    }
	      catch(Exception e) {
	    	  e.printStackTrace();
	      }
	    }
	}     

