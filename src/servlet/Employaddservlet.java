package servlet;

import imple.Imple;
import inter.Inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Employaddbean;
//import bean.Employregbean;

/**
 * Servlet implementation class Employaddservlet
 */
@WebServlet("/Employaddservlet")
public class Employaddservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Employaddservlet() {
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
		
		String locat=request.getParameter("location");
		System.out.println("Username: "+locat);
		
		String area=request.getParameter("area");
		System.out.println("Phoneno: "+area);
		
		String syst=request.getParameter("system");
		System.out.println("Email: "+syst);
		
		String date=request.getParameter("dates");
		System.out.println("Password: "+date);
		
		String oss=request.getParameter("osystem");
		System.out.println("Username: "+oss);
		
		String fire=request.getParameter("firewall");
		System.out.println("Phoneno: "+fire);
		
		String dbsetup=request.getParameter("database");
		System.out.println("Email: "+dbsetup);
		
		String hdisk=request.getParameter("hdisk");
		System.out.println("Password: "+hdisk);
		
		Employaddbean ur=new Employaddbean();
		//ur.setName(uname);
		ur.setLocation(locat);
		ur.setArea(area);
		ur.setSystem(syst);
		ur.setDate(date);
		ur.setOperatsyst(oss);
		ur.setFirewal(fire);
		ur.setDbsetup(dbsetup);
		ur.setHarddisk(hdisk);
		
		
		
		Inter in=new Imple();
		int i=in.empaddinter(ur);
		if(i==1){
			response.sendRedirect("employdataadd.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}

		
	}

}
