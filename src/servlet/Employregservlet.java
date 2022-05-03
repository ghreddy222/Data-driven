package servlet;

import imple.Imple;
import inter.Inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Employregbean;



/**
 * Servlet implementation class Employregservlet
 */
@WebServlet("/Employregservlet")
public class Employregservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Employregservlet() {
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
		
		String uname=request.getParameter("username");
		System.out.println("Username: "+uname);
		
		String phno=request.getParameter("phonenumber");
		System.out.println("Phoneno: "+phno);
		
		String email=request.getParameter("email");
		System.out.println("Email: "+email);
		
		String pass=request.getParameter("password");
		System.out.println("Password: "+pass);
		
		Employregbean ur=new Employregbean();
		ur.setName(uname);
		ur.setPhoeneno(phno);
		ur.setEmail(email);
		ur.setPassword(pass);
		
		Inter in=new Imple();
		int i=in.ureg(ur);
		if(i==1){
			response.sendRedirect("employlogin.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}

		
		
	}

}
