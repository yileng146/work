package com.headphone_net.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.head_phone.beans.Code;
import com.headphone_src.utils.DBUtil;

public class CodedaoImpl {
	public ArrayList<Code> searchCode()
	{
		ArrayList<Code> codelist=new ArrayList<Code>();
		DBUtil dbUtil=new DBUtil();
		Connection conn= (Connection) dbUtil.getConn();
		ResultSet rs=null;
		try {
			String sql="select * from t_code where code_name=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				int code_id=rs.getInt("code_id");
				String code_name=rs.getString("code_name");
				int code_use=rs.getInt("code_use");
				Code code=new Code();
				code.setCode_id(code_id);
				code.setCode_name(code_name);
				code.setCode_use(code_use);
				codelist.add(code);
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
		
		
		return codelist;
	}
}