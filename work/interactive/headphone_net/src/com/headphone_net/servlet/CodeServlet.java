package com.headphone_net.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.head_phone.beans.Code;
import com.headphone_net.dao.CodedaoImpl;
import com.google.gson.Gson;

public class CodeServlet extends HttpServlet{
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	super.doPost(request, response);
}

@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			String	para=request.getParameter("para");
			if(para.equals("search_code"))
			{
				searchCode(request,response);
				System.out.println("6666");
			}
	}

private void searchCode(HttpServletRequest request, HttpServletResponse response) {
	// TODO Auto-generated method stub
	ArrayList<Code> codelist=(new CodedaoImpl()).searchCode();
	Gson gson=new Gson();
	String json_arr=gson.toJson(codelist);
	try {
		PrintWriter out=response.getWriter();
		out.println(json_arr);
		out.flush();
		out.close();
		
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
}
