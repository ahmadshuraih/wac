package nl.hu.v1wac.firstapp.servlets;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(urlPatterns = "/DynamicServlet.do")
public class DynamicServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String first = req.getParameter("first");
		String second = req.getParameter("second");
		String methode = req.getParameter("calc");
		int resultaat = 0;
		if (methode.equals("-")) {
			resultaat = Integer.parseInt(first) - Integer.parseInt(second);
		} else if (methode.equals("+")) {
			resultaat = Integer.parseInt(first) + Integer.parseInt(second);
		} else if (methode.equals("/")) {
			resultaat = Integer.parseInt(first) / Integer.parseInt(second);
		} else {
			resultaat = Integer.parseInt(first) * Integer.parseInt(second);
		}

		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");

		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("  <title>Rekenmachine</title>");
		out.println("  <body>");
		out.println("    <h2>Rekenmachine Webapplication</h2>");
		out.println("    <h2>Het resultaat van " + first + methode + second + " is: " + resultaat + "</h2>");
		out.println("  </body>");
		out.println("</html>");
	}
}