package com.headphone_net.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import com.head_phone.beans.lesson;
import com.headphone_src.utils.DBUtil;

public class LessondaoImpl {
	public boolean modifylesson(lesson lesson) 
	{
		boolean flag=false;
		
		DBUtil dbUtil=new DBUtil();
		Connection conn= (Connection) dbUtil.getConn();
		
		
		try {
			String sql="update t_lesson set lesson_name=?,lesson_price=?,lesson_class=? where phone_id=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,lesson.getLesson_name());
			pstmt.setString(2,lesson.getLesson_class());
			pstmt.setString(3,lesson.getLesson_author());
			pstmt.setInt(4,lesson.getLesson_price());
		    pstmt.setTimestamp(5,lesson.getLesson_time() );
			int result=pstmt.executeUpdate();
			if (1==result) {
				flag=true;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return flag;
	}
	
	public boolean insertlesson(lesson lesson) 
	{
		boolean flag=false;
		
		DBUtil dbUtil=new DBUtil();
		Connection conn= (Connection) dbUtil.getConn();
		
		
		try {
			String sql="insert into t_lesson(lesson_name,lesson_price,lesson_class,lesson_author,lesson_time) values(?,?,?,?,?)";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,lesson.getLesson_name());
			pstmt.setInt(2,lesson.getLesson_price());
			pstmt.setString(3,lesson.getLesson_class());
			pstmt.setString(4,lesson.getLesson_author());
		    pstmt.setTimestamp(5,lesson.getLesson_time() );
			int result=pstmt.executeUpdate();
			if (1==result) {
				flag=true;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return flag;
	}
	//按照id进行查询。
	public lesson searchlessonById(int lesson_id_para) {
		lesson lesson=new lesson();
		DBUtil dbUtil=new DBUtil();
		Connection conn= (Connection) dbUtil.getConn();
		ResultSet rs=null;
		
		try {
			String sql="select * from t_lesson where lesson_id=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, lesson_id_para);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				int lesson_id=rs.getInt("lesson_id");
				String lesson_name=rs.getString("lesson_name");
				float lesson_price=rs.getFloat("lesson_price");
				String lesson_class=rs.getString("lesson_class");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return lesson;
	}
	
	public ArrayList<lesson> searchLessonByName(String lesson_name_para)
	{
		ArrayList<lesson> lessonlist=new ArrayList<lesson>();
		DBUtil dBUtil=new DBUtil();
		Connection conn= dBUtil.getConn();	
		ResultSet rs=null;
		PreparedStatement psmt=null;
		String sql="";
		try {
			if(lesson_name_para.equals("")||lesson_name_para==null){
				sql="select * from t_lesson";
				 psmt=conn.prepareStatement(sql);	
			}else {
				sql="select * from t_lesson where lesson_name=?";
				psmt=conn.prepareStatement(sql);
				psmt.setString(1, lesson_name_para);
			}
			rs=psmt.executeQuery();		
			while(rs.next())
			{
				int lesson_id=rs.getInt("lesson_id");
				String lesson_name=rs.getString("lesson_name");
				String lesson_class=rs.getString("lesson_class");
				String lesson_author=rs.getString("lesson_author");
				int lesson_price=rs.getInt("lesson_price");
				Timestamp lesson_time=rs.getTimestamp("lesson_time");
				lesson lesson=new lesson();
				lesson.setLesson_id(lesson_id);
				lesson.setLesson_name(lesson_name);
				lesson.setLesson_class(lesson_class);
				lesson.setLesson_author(lesson_author);
				lesson.setLesson_price(lesson_price);
				lesson.setLesson_time(lesson_time);
				lessonlist.add(lesson);
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
		return lessonlist;
	}
	public boolean deleteByID(int lesson_id_para) {
		boolean flag=false;
		DBUtil dbUtil=new DBUtil();
		Connection conn=dbUtil.getConn();
		
		String sql="delete from t_lesson where lesson_id=?";
		try {
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,lesson_id_para);
			int result=pstmt.executeUpdate();
			if (1==result) {
				flag=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return flag;
	}
//	public static void main(String[] args) {
//		lessondaoImpl lessondaoImpl=new lessondaoImpl();
//		lesson lesson=new lesson();
//		lesson.setlesson_name("森海塞尔");
//		lesson.setlesson_price(799);
//		lesson.setlesson_class("头戴式");
//		boolean flag=lessondaoImpl.insertlesson(lesson);
//	    System.out.println(flag);
//	}
}
