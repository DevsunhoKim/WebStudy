package com.sist.dao;
// 정석은 json 주고받고, 지금것은 약식으로 html로 주고받기

import java.util.*;
import java.sql.*;
import com.sist.dbcp.*;

public class FoodDAO {
	private Connection conn;
	private PreparedStatement ps;
	private CreateDBCPConnection dbconn=new CreateDBCPConnection();
	private static FoodDAO dao;
	
	// 싱글턴
	public static FoodDAO newInstance() {
		if(dao==null)
			dao=new FoodDAO();
		return dao;
	}
	
	// 목록
	public List<FoodVO> foodListData(int page){
		List<FoodVO> list=new ArrayList<FoodVO>();
		try {
			conn=dbconn.getConnection();
			String sql="SELECT name,poster,num "
					+ "FROM (SELECT name,poster,rownum as num "
					+ "FROM (SELECT name,poster "
					+ "FROM food_menu_house ORDER BY fno ASC)) "
					+ "WHERE num BETWEEN ? and ?";
			ps=conn.prepareStatement(sql);
			int rowsize=12;
			int start=(rowsize*page)-(rowsize-1);
			int end=rowsize*page;
			ps.setInt(1, start);
			ps.setInt(2, end);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				FoodVO vo=new FoodVO();
				vo.setName(rs.getString(1));
				vo.setPoster("https://www.menupan.com"+rs.getString(2));
				list.add(vo);
			}
			rs.close();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			dbconn.disConnection(conn, ps);
		}
		return list;
	}
	
	// 총 페이지
	public int foodTotalPage() {
		int total=0;
		try {
			conn=dbconn.getConnection();
			String sql="SELECT CEIL(COUNT(*)/12.0) FROM food_menu_house";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			rs.next();
			total=rs.getInt(1);
			rs.close();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			dbconn.disConnection(conn, ps);
		}
		return total;
	}
}