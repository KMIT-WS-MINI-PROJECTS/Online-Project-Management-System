

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ajaxcheckserv
 */
public class ajaxcheckserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ajaxcheckserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("resource")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		   Statement stmt = null;
		   String USER="root";
			PreparedStatement st=null;
			PrintWriter out =response.getWriter();
		    
			ResultSet rs = null;
		    String role="",status="";
		    response.setContentType("text/plain");
		    String colname=request.getParameter("name");
			String actionname=request.getParameter("buttonname");
		    try{
		     Class.forName("com.mysql.jdbc.Driver");
		        
		      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject",USER,"");
		      
		      st=conn.prepareStatement("select status from statuscheck where aname=(?)");
     	  st.setString(1,actionname);
     	  rs=st.executeQuery();
		      rs.next();
		      status=rs.getString("status");	
		      
		     stmt= conn.createStatement();
	    	 rs=stmt.executeQuery("select name,role from checkrole");
	    	  rs.next();
	    	  role=rs.getString("role");
	    	    
	    	 if(role.equals("projectmanager")) {
	    		
	    		 if( status.equals("verify")){
	    		 if(colname.equals("verified") ||colname.equals("actionitems")) {
	    		   	 st=conn.prepareStatement("update statuscheck set status=(?) where aname=(?)");
   		         	  st.setString(1,colname);st.setString(2,actionname);
   		         	  st.executeUpdate();
   		         	stmt.executeUpdate("delete from checkrole");
   		     	//out.println("true");
   		         	 }
	    		 }
	    		else if(status.equals("verified")) {
	    			if(colname.equals("completed")) {
	    		    	  st=conn.prepareStatement("update statuscheck set status='completed' where aname=(?)"); 
	    		    	  st.setString(1,actionname);
	    		       	  st.executeUpdate();	       	  
	    			}
	    		}
	    		stmt.executeUpdate("delete from checkrole");
	    		 stmt.close();
   	   	    	 st.close();
				rs.close();
	   	    	conn.close();
	    		out.println("true");	
	    	 }
	    	  else if(role.equals("developer") && status.equals("inprogress")) {
	    			
	    	  st=conn.prepareStatement("update statuscheck set status='verify' where aname=(?)");
	    	  st.setString(1,actionname);
	    	  st.executeUpdate();
	    	  
	    	  stmt.executeUpdate("delete from checkrole");
		     
	    	  out.println("true");
	    	 }
		    }
		    catch(Exception e) {e.printStackTrace();}
            
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
