package com.in28minutes.servletjsp.web.servlet.example;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/first")
public class FirstServlet extends HttpServlet {
	// FirstServlet
	// LoginServlet
	// SecondServlet
	// ThirdServlet
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		List<String> list = Arrays.asList("Bradman", "Sachin", "Lara",
				"Ponting");

		request.setAttribute("bestBatsmanList", list);

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("Sachin", 51);
		map.put("Bradman", 29);
		map.put("Lara", 34);
		map.put("Ponting", 41);

		request.setAttribute("bestBatsmanCenturiesMap", map);

		request.setAttribute("batsmanName", "Sachin");

		request.getRequestDispatcher("/WEB-INF/views/first.jsp").forward(
				request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
