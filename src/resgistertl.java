

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class resgistertl
 */
@WebServlet("/resgistertl.do")
public class resgistertl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public resgistertl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] results = request.getParameterValues("c1");
		/*for (int i = 0; i < results.length; i++) {
		    System.out.println(results[i]); 
		}*/
	     Connection conn = null;
		  Statement stmt=null;
		   String USER="root";
			PreparedStatement st=null;
			// String name="";
		  // ResultSet rs = null;
		   String prname=request.getParameter("prname");
		    PrintWriter out =response.getWriter();
		  out.println(results[0]);
		    try{
		      Class.forName("com.mysql.jdbc.Driver"); 
		      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject",USER,"");
		      stmt=conn.createStatement();
		      //out.println("redirected");
			   
		      st=conn.prepareStatement("insert into storetlwithpr values(?,?)");
		      st.setString(1, results[0]);
		      st.setString(2,prname);
		      st.executeUpdate();
		      out.println("updated");
		    }
		    catch(Exception e) {e.printStackTrace();}
		    finally {
		    	try {
		    		
		    		stmt.close();
		    		st.close();
		    		conn.close();
		    	}
		    	catch(Exception e) {
		    		e.printStackTrace();
		    	}
		    }	

	     
	}

}
