package com.headphone_net.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.head_phone.beans.Headphone;
import com.headphone_net.dao.HeadphonedaoImpl;

public class HeadphoneSerlvet extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String para=req.getParameter("para");
				if (para.equals("add")) {
					addheadphone(req,resp);
				}else if(para.equals("search")) {
					searchHeadphoneByname(req,resp);
				}else if (para.equals("delete")) {
					deleteHeadphoneByID(req,resp);
				}
				else if(para.equals("modify1")) {
					searchHeadphoneById(req, resp);
				}else if(para.equals("modify2")) {
					modifyHeadphone(req,resp);
     			}
//				else if (para.equals("searchheadphone_ajax")) {
//					searchheadphone_ajax(req, resp);
//				}
	}
	

private void modifyHeadphone(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
	
	String headphone_id_str=req.getParameter("headphone_id");
	int headphone_id=Integer.parseInt(headphone_id_str);
	String headphone_name=req.getParameter("headphone_name");
	String headphone_price_str=req.getParameter("headphone_price");
	float headphone_price=Float.parseFloat(headphone_price_str);
	String headphone_class=req.getParameter("headphone_class");
	
	Headphone headphone=new Headphone();
	headphone.setHeadphone_id(headphone_id);
	headphone.setHeadphone_name(headphone_name);
	headphone.setHeadphone_price(headphone_price);
	headphone.setHeadphone_class(headphone_class);
	
	HeadphonedaoImpl headphonedaoImpl=new HeadphonedaoImpl();
	boolean flag=headphonedaoImpl.modifyHeadphone(headphone);
	try {
		PrintWriter out = resp.getWriter();
//		if (flag) {
//           out.println("<SCRIPT LANGUAGE='JavaScript'>alert('Ìí¼Ó³É¹¦£¡')JavaScript:history.back(-1);</SCRIPT>");
//		} else {
//			out.println("<SCRIPT LANGUAGE='JavaScript'>alert('Ìí¼ÓÊ§°Ü£¡')JavaScript:history.back(-1);</SCRIPT>");
//		} 
		if (flag) {
			out.print("<script>alert('ÐÞ¸Ä³É¹¦');  </script>");
			} else {
			out.print("<script>alert('ÐÞ¸ÄÊ§°Ü');  </script>");
			} 
	} catch (Exception e) {
		// TODO: handle exception 
	}
}
	
private void searchHeadphoneById(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
	String headphone_id_str=req.getParameter("headphone_id");
	int headphone_id=Integer.parseInt(headphone_id_str);
	HeadphonedaoImpl headphonedaoImpl=new HeadphonedaoImpl();
	Headphone headphone=headphonedaoImpl.searchHeadphoneById(headphone_id);
	try {
		req.setAttribute("headphone", headphone);
		req.getRequestDispatcher("/headphone/modifyheadphone.jsp").forward(req, resp);
	} catch (ServletException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	}
//	private void searchheadphone_ajax(HttpServletRequest req, HttpServletResponse resp) {
//		// TODO Auto-generated method stub
//		System.out.println("6666666");
//		try {
//			String headphone_name=req.getParameter("headphone_name");
//			HeadphonedaoImpl headphonedaoImpl=new HeadphonedaoImpl();
//			ArrayList<Headphone>headphonelist=headphonedaoImpl.searchHeadPhoneByName(headphone_name);
//			
//			PrintWriter out=resp.getWriter();
//			out.println("ajax-success");
//			out.flush();
//			out.close();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//	}
	private void deleteHeadphoneByID(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		String headphone_id_str=req.getParameter("headphone_id");
		int headphone_id=Integer.parseInt(headphone_id_str);
		HeadphonedaoImpl headphonedaoImpl=new HeadphonedaoImpl();
		boolean flag=headphonedaoImpl.deleteByID(headphone_id);
		try {
			PrintWriter out = resp.getWriter();
			if (flag) {
				out.print("<script>alert('É¾³ý³É¹¦');  </script>");
				} else {
				out.print("<script>alert('É¾³ýÊ§°Ü');  </script>");
				} 
		} catch (Exception e) {
			// TODO: handle exception 
		}
		
	}
	public void searchHeadphoneByname(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		String headphone_name=req.getParameter("headphone_name");
		HeadphonedaoImpl headphonedaoImpl=new HeadphonedaoImpl();
		ArrayList<Headphone>headphonelist=headphonedaoImpl.searchHeadPhoneByName(headphone_name);
		try {
			req.setAttribute("headphonelist", headphonelist);
			req.getRequestDispatcher("/headphone/searchheadphone.jsp").forward(req, resp);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void addheadphone(HttpServletRequest req, HttpServletResponse resp) {
		String headphone_name=req.getParameter("headphone_name");
		String headphone_price_str=req.getParameter("headphone_price");
		float headphone_price=Float.parseFloat(headphone_price_str);
		String headphone_class=req.getParameter("headphone_class");
		
		Headphone headphone=new Headphone();
		headphone.setHeadphone_name(headphone_name);
		headphone.setHeadphone_price(headphone_price);
		headphone.setHeadphone_class(headphone_class);
		
		HeadphonedaoImpl headphonedaoImpl=new HeadphonedaoImpl();
		boolean flag=headphonedaoImpl.insertheadphone(headphone);
		try {
			PrintWriter out = resp.getWriter();
//			if (flag) {
//               out.println("<SCRIPT LANGUAGE='JavaScript'>alert('Ìí¼Ó³É¹¦£¡')JavaScript:history.back(-1);</SCRIPT>");
//			} else {
//				out.println("<SCRIPT LANGUAGE='JavaScript'>alert('Ìí¼ÓÊ§°Ü£¡')JavaScript:history.back(-1);</SCRIPT>");
//			} 
			if (flag) {
				out.print("<script>alert('Ìí¼Ó³É¹¦');  </script>");
				} else {
				out.print("<script>alert('Ìí¼ÓÊ§°Ü');  </script>");
				} 
		} catch (Exception e) {
			// TODO: handle exception 
		}
	}
}
