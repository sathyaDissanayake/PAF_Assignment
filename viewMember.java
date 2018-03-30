package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class viewMember
 */
@WebServlet("/viewMember")
public class viewMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	encryptionDecryption ed=new encryptionDecryption();
	
    public viewMember() {
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
		
		String name=request.getParameter("userName");
		String password=request.getParameter("password");
		String pwd=ed.encrypt(password, 5);
		
		PrintWriter out=response.getWriter();
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/paf","root","");
		/*	String sql1="select UserID from user where Email='"+name+"',Password='"+pwd+"'";
			PreparedStatement ps1=(PreparedStatement) con.prepareStatement(sql1);
			ResultSet rs1=ps1.executeQuery();
			int id=Integer.parseInt(rs1.getString(1));*/
			String sql="select * from user where Email=? and pwd=?";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, pwd);
			ResultSet rs= ps.executeQuery();
			
			

			String fname=rs.getString(2);
			String lname=rs.getString(3);
			String DOB=rs.getString(4);
			String P_address=rs.getString(5);
			String C_address=rs.getString(6);
			String Mobile=rs.getString(7);
			String Phone=rs.getString(8);
			String Email=rs.getString(9);
			String dbpassword=rs.getString(10);
			String favourites=rs.getString(11);
			
			String Password=ed.dencrypt(dbpassword, 5);
			

			request.setAttribute("fname",fname);
			request.setAttribute("lname",lname);
			request.setAttribute("DOB",DOB);
			request.setAttribute("P_address",P_address);
			request.setAttribute("C_address",C_address);
			request.setAttribute("Mobile",Mobile);
			request.setAttribute("Phone",Phone);
			request.setAttribute("Email",Email);
			request.setAttribute("Password",Password);
			request.setAttribute("favourites",favourites);
			
			
		RequestDispatcher dispatcher=(RequestDispatcher) request.getRequestDispatcher("viewMember.jsp");
		dispatcher.forward(request, response);

		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}
}
