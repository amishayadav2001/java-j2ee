package com.aurionpro.model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");

	     PrintWriter out = response.getWriter();

		System.out.println("Hello World");
		String userName = request.getParameter("name");
		System.out.println(userName);
		  out.println("Name: " + userName + "<br>");
		
		String userEmail = request.getParameter("email");
		System.out.println(userEmail);
		out.println("Email: " + userEmail + "<br>");
		
		String userGraduation = request.getParameter("graduation");
		System.out.println(userGraduation);
		out.println("Graduation: " + userGraduation + "<br>");
		
		String userGender = request.getParameter("gender");
		System.out.println(userGender);
		out.println("Gender: " + userGender + "<br>");
		
		String langs[] = request.getParameterValues("languages");
		if(langs!=null){
			String temp="";
			for(String x:langs){
				temp+=x+" ";
			}
			out.println("<p class=\"h4\"> Favorite Languages : "+temp+"</p>");
			System.out.println(temp);
		}
		
//		String userSubject = request.getParameter("languages");
//		System.out.println(userSubject);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
