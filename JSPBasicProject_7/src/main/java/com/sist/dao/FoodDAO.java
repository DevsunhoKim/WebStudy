package com.sist.dao;
import java.sql.*;
import java.util.*;
import javax.sql.*;
import javax.naming.*;
import com.sist.dbcp.*;

public class FoodDAO {
	private Connection conn;
	private PreparedStatement ps;
	private CreateDBCPConnection dbconn=new CreateDBCPConnection();
//	private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	private static FoodDAO dao;
	public static FoodDAO newInstance() {
		if(dao==null)
			dao=new FoodDAO();
		return dao;
	}
	
//	public void getConnection() {
//		try {
//			Context init=new InitialContext();
//			Context c=(Context)init.lookup("java://comp/env");
//			DataSource ds=(DataSource)c.lookup("jdbc/oracle");
//			conn=ds.getConnection();
//		}catch(Exception ex) {}
//	}
//	
//	public void disConnection() {
//		try {
//			if(ps!=null) ps.close();
//			if(conn!=null) conn.close();
//		}catch(Exception ex) {}
//	}
	
	// 목록출력
	public List<FoodVO> foodListdata(int page,String fd,String ss){
		List<FoodVO> list=new ArrayList<FoodVO>();
		try {
			conn=dbconn.getConnection();
			String sql="SELECT fno,poster,name,address,num "
					+ "FROM (SELECT fno,poster,name,address,rownum as num "
					+ "FROM (SELECT fno,poster,name,address "
					+ "FROM food_menu_house "
					+ "WHERE "+fd+" LIKE '%'||?||'%' "
					+ "ORDER BY fno ASC)) "
					+ "WHERE num BETWEEN ? AND ?";
			
			// 컬럼명 / 테이블명은 ?로 처리할 수 없다
			// ps.setString(1,fd) => address => 'address' => column이나 table은 ''를 안쓰기때문에 ?처리불가
			// Mybatis => ${} #{}
			ps=conn.prepareStatement(sql);
			int rowSize=12;
			int start=(rowSize*page)-(rowSize-1);
			int end=rowSize*page;
			ps.setString(1, ss);
			// fd => fieldDate (컬럼), ss => 찾는문자열
			ps.setInt(2, start);
			ps.setInt(3, end);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				FoodVO vo=new FoodVO();
				vo.setFno(rs.getInt(1));
				vo.setPoster(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setAddress(rs.getString(4));
				list.add(vo);
			}
			rs.close();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			dbconn.disConnection(conn, ps);
//			disConnection();
		}
		return list;
	}
	// 총페이지
	public int foodTotalPage(String fd,String ss) {
		int total=0;
		try {
			conn=dbconn.getConnection();
//			getConnection();
			String sql="SELECT CEIL(COUNT(*)/12.0) "
					+ "FROM food_menu_house "
					+ "WHERE "+fd+" LIKE '%'||?||'%'";
			ps=conn.prepareStatement(sql);
			ps.setString(1, ss);
			ResultSet rs=ps.executeQuery();
			rs.next();
			total=rs.getInt(1);
			rs.close();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
		dbconn.disConnection(conn, ps);
//			disConnection();
		}
		return total;
	}
	/*
			1. 데이터베이스 => 어떤 값(요청)
			2. 화면 어떤 데이터가 필요한지...
			=> ajax/mvc
			
			자바
				1. 코딩 => 반복 => 메소드 (여러개) => 클래스
				   재사용(목적)
				2. 메소드
				   ===== 1. 요청값
				   
			오라클 
				1. SQL문장 => JOIN, SUBQuery
				
			JSP => 연결
			=================================
			ㅣ체계적 : 스프링
	 */
	// 상세보기
	public FoodVO foodDetailData(int fno) {
		// ss/fd => 화면 이동 변수
		FoodVO vo=new FoodVO();
		try {
			conn=dbconn.getConnection();
			String sql="SELECT fno,poster,name,type,address,phone,score,theme,price,time,seat,content "
					+ "FROM food_menu_house WHERE fno="+fno;
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			rs.next();
			vo.setFno(rs.getInt(1));
			vo.setPoster(rs.getString(2));
			vo.setName(rs.getString(3));
			vo.setType(rs.getString(4));
			vo.setAddress(rs.getString(5));
			vo.setPhone(rs.getString(6));
			vo.setScore(rs.getDouble(7));
			vo.setTheme(rs.getString(8));
			vo.setPrice(rs.getString(9));
			vo.setTime(rs.getString(10));
			vo.setSeat(rs.getString(11));
			vo.setContent(rs.getString(12));
			
			rs.close();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			dbconn.disConnection(conn, ps);
		}
		return vo;
	}
}
