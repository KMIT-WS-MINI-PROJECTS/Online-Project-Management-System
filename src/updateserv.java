

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateserv
 */
@WebServlet("/updateserv.do")
public class updateserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  Connection conn = null;
		  Statement stmt;
		   String USER="root";
			PreparedStatement st;
			 
		   ResultSet rs = null;
		    PrintWriter out =response.getWriter();
		    String name="",role="developer",status="";
		    //out.println("reached1");
		    response.setContentType("text/plain");
			String actionname=request.getParameter("buttonname");
		    try{
		    	  Class.forName("com.mysql.jdbc.Driver"); 
		      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject",USER,"");
		     //out.println("reached2");
		  
		   
		   // out.println(actionname);
		    st=conn.prepareStatement("select status from statuscheck where aname=(?)");
	       	  st.setString(1,actionname);
	       	  rs=st.executeQuery();
	       	  rs.next();
			   status=rs.getString("status");	
			   //out.println(status);
			   
		    	rs=null;
	    	  stmt=conn.createStatement();
	    	  rs=stmt.executeQuery("select name,role from checkrole");
	    	 //out.println(rs.next());
	    	  while(rs.next()){
	    	     name=rs.getString("name");  
		    	 role=rs.getString("role");
		     } 
		    //	 out.println(status);
	    	 //out.println("developer");
	    	// out.println(role);
	    	  //out.println("hi "+name);
	    	  //out.println(status);
		    	 
    	
	    	  
	    	  //stmt.executeUpdate("delete from checkrole");
				
	    	  
	    	 
	    	 if(role.equals("developer") && status.equals("actionitems")) {
	    		  
	    		 st=conn.prepareStatement("update actiondetails set dname=(?) where aname=(?)");
	    	  st.setString(1,name);st.setString(2,actionname);
	    	  st.executeUpdate();
	    	  
	    	  st=conn.prepareStatement("update statuscheck set status='inprogress' where aname=(?)");
	    	  st.setString(1,actionname);
	    	  st.executeUpdate();
	    	  
	    	  stmt.executeUpdate("delete from checkrole");
		     out.println("true");
	    	 }
	    	 conn.close();
		    }
		    catch(Exception e) {e.printStackTrace();}
      
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		       }
}
