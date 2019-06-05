package com.headphone_net.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.head_phone.beans.lesson;
import com.headphone_net.dao.LessondaoImpl;

public class LessonServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		doPost(request, response);
	}	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String para=request.getParameter("para");
		if(para.equals("add_lesson_pc"))
		{
			add_lesson_pc(request,response);
			System.out.println("jsonStr");
		}
	}
	private void add_lesson_pc(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String jsonStr=readJSONObj(request);
		System.out.println("jsonStr"+jsonStr);
		Gson gson=new Gson();
		lesson lesson=gson.fromJson(jsonStr, lesson.class);
		System.out.println("lesson"+lesson);
		String lesson_name=lesson.getLesson_name();
		LessondaoImpl lessondaoimp=new LessondaoImpl();
		ArrayList<lesson> lessonlist=lessondaoimp.searchlessonByName(lesson_name);
		String json_array=gson.toJson(lessonlist);
		System.out.println(json_array);
		try {
			PrintWriter out = response.getWriter();
			out.println(json_array);
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public String readJSONObj(HttpServletRequest req){
		String jsonStr="";
		StringBuffer jsonStrBuffer=new StringBuffer();
		try {
			BufferedReader reader=req.getReader();
			String line=reader.readLine();
			while(line!=null)
			{
				jsonStrBuffer.append(line);
				line=reader.readLine();
			}
			jsonStr=jsonStrBuffer.toString();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jsonStr;
	}
}

		
		
}
