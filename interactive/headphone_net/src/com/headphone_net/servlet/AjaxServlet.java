package com.headphone_net.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AjaxServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String para=req.getParameter("para");
		if (para.equals("ordinamry_submit")) {
			ordinamry_submit(req,resp);
		}
	}

	private void ordinamry_submit(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		String user_name=req.getParameter("user_name");
		String user_pwd=req.getParameter("user_pwd");
		System.out.println("user_name="+user_name);
		System.out.println("user_pwd="+user_pwd);

		try {
			req.getRequestDispatcher("/ajax/json_index.jsp").forward(req,resp);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		try {
//			PrintWriter out=resp.getWriter();
//			out.write("success");
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
	}
}
