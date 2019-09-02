package controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Nombres;

@WebServlet(name = "Controller", urlPatterns = {"/Controller"})
public class Controller extends HttpServlet{

	protected void processRequest(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException, IOException{
		
		response.setContentType("text/html; charset = UTF-8");
		
		try {
			String nombre1 = request.getParameter("nombre1");
			String nombre2 = request.getParameter("nombre2");
			String nombre3 = request.getParameter("nombre3");
			List<String> nombres = Arrays.asList(nombre1, nombre2, nombre3);
			String nombres_concatenados = Nombres.nombresConcatenados(nombres);
			String hola_mundo = "hola mundo desde servlet!!";
			request.setAttribute("hola_mundo", hola_mundo);
			request.setAttribute("nombres_concatenados", nombres_concatenados);
			
			request.getRequestDispatcher("/hola_mundo_servlet.jsp").forward(request, response);
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException, IOException{
		
		processRequest(request, response);
	}
}
