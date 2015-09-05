package com.in28minutes.servletjsp.web.servlet.example;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(
				request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// user@google.com, password
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		request.setAttribute("email", email);
		request.setAttribute("password", password);

		if (email.equalsIgnoreCase("user@google.com")
				&& password.equalsIgnoreCase("password")) {
			request.getRequestDispatcher("/first").forward(request, response);
		} else {
			request.setAttribute("error", "Invalid ID/Password");
			request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(
					request, response);
		}
	}
}
