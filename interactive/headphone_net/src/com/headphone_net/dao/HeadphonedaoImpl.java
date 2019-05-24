package com.headphone_net.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.xml.transform.Result;

import org.omg.CORBA.PUBLIC_MEMBER;

import com.head_phone.beans.Headphone;
import com.headphone_src.utils.DBUtil;



public class HeadphonedaoImpl {

	public boolean modifyHeadphone(Headphone headphone) 
	{
		boolean flag=false;
		
		DBUtil dbUtil=new DBUtil();
		Connection conn= (Connection) dbUtil.getConn();
		
		
		try {
			String sql="update t_headphone set headphone_name=?,headphone_price=?,headphone_class=? where phone_id=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,headphone.getHeadphone_name());
			pstmt.setFloat(2,headphone.getHeadphone_price());
			pstmt.setString(3,headphone.getHeadphone_class());
			pstmt.setInt(4,headphone.getHeadphone_id());
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
	
	public boolean insertheadphone(Headphone headphone) 
	{
		boolean flag=false;
		
		DBUtil dbUtil=new DBUtil();
		Connection conn= (Connection) dbUtil.getConn();
		
		
		try {
			String sql="insert into t_headphone(headphone_name,headphone_price,headphone_class) values(?,?,?)";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,headphone.getHeadphone_name());
			pstmt.setFloat(2,headphone.getHeadphone_price());
			pstmt.setString(3,headphone.getHeadphone_class());
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
	public Headphone searchHeadphoneById(int headphone_id_para) {
		Headphone headphone=new Headphone();
		DBUtil dbUtil=new DBUtil();
		Connection conn= (Connection) dbUtil.getConn();
		ResultSet rs=null;
		
		try {
			String sql="select * from t_headphone where headphone_id=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, headphone_id_para);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				int headphone_id=rs.getInt("headphone_id");
				String headphone_name=rs.getString("headphone_name");
				float headphone_price=rs.getFloat("headphone_price");
				String headphone_class=rs.getString("headphone_class");
				headphone.setHeadphone_id(headphone_id);
				headphone.setHeadphone_name(headphone_name);
				headphone.setHeadphone_price(headphone_price);
				headphone.setHeadphone_class(headphone_class);
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
		return headphone;
	}
	
	public ArrayList<Headphone> searchHeadPhoneByName(String phone_name_para){
		ArrayList<Headphone> headphonelist=new ArrayList<Headphone>();
		DBUtil dbUtil=new DBUtil();
		Connection conn= (Connection) dbUtil.getConn();
		ResultSet rs=null;
		try {
			String sql="select * from t_headphone where headphone_name=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, phone_name_para);
			
			rs=pstmt.executeQuery();
			while (rs.next()) {
				int headphone_id=rs.getInt("headphone_id");
				String headphone_name=rs.getString("headphone_name");
				float headphone_price=rs.getFloat("headphone_price");
				String headphone_class=rs.getString("headphone_class");
				Headphone headphone=new Headphone();
				headphone.setHeadphone_id(headphone_id);
				headphone.setHeadphone_name(headphone_name);
				headphone.setHeadphone_price(headphone_price);
				headphone.setHeadphone_class(headphone_class);
				headphonelist.add(headphone);
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
		
		
		return headphonelist;
	}
	public boolean deleteByID(int headphone_id_para) {
		boolean flag=false;
		DBUtil dbUtil=new DBUtil();
		Connection conn=dbUtil.getConn();
		
		String sql="delete from t_headphone where headphone_id=?";
		try {
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,headphone_id_para);
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
//		HeadphonedaoImpl headphonedaoImpl=new HeadphonedaoImpl();
//		Headphone headphone=new Headphone();
//		headphone.setHeadphone_name("森海塞尔");
//		headphone.setHeadphone_price(799);
//		headphone.setHeadphone_class("头戴式");
//		boolean flag=headphonedaoImpl.insertheadphone(headphone);
//	    System.out.println(flag);
//	}
}
