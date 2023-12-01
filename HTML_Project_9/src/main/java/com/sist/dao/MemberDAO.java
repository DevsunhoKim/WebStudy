package com.sist.dao;

//회원, 로그인
import java.sql.*;
import java.util.*;
import javax.sql.*;
import javax.naming.*;

public class MemberDAO {

	private Connection conn;
	private PreparedStatement ps;
	private static MemberDAO dao;
	public void getConnection()
	{
		try
		{
			Context init=new InitialContext();
			Context c=(Context)init.lookup("java://comp/env");
			DataSource ds=(DataSource)c.lookup("jdbc/oracle");
			conn=ds.getConnection();
		}catch(Exception ex) {}
	}
	public void disConnection()
	{
		try
		{
			if(ps!=null)
			{
				ps.close();		
			}
			if(conn!=null)
			{
				conn.close();
			}
		}catch(Exception ex) {}
	}
	public static MemberDAO newInstance()
	{
		if(dao==null)
		{
			dao=new MemberDAO();
		}
		return dao;
	}
	// 기능 처리
	public MemberVO memberLogin(String id, String pwd)
	{
		MemberVO vo=new MemberVO();
		try
		{
			// 1. 주소값 얻기
			getConnection();
			// 2. SQL 문장 전송
			String sql="SELECT COUNT(*) FROM member_servlet "
					+ "WHERE id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs=ps.executeQuery();
			rs.next();
			int count=rs.getInt(1);
			rs.close();
			if(count==0) {
				vo.setMsg("NOID");
			}
			else
			{
				sql="SELECT pwd,name FROM member_servlet "
						+ "WHERE id=?";
				ps=conn.prepareStatement(sql);
				ps.setString(1, id);
				rs=ps.executeQuery();
				rs.next();
				String db_pwd=rs.getString(1);
				String name=rs.getString(2);
				if(db_pwd.equals(pwd))
				{
					
					vo.setMsg("OK");
					vo.setName(name);
				}
				else
				{
					vo.setMsg("NOPWD");
				}
			}
			/*
			 * 로그인 처리
			 * 	1) id 존재 여부 확인
			 * 		=> COUNT => 0, 1
			 *  2) 	id(X) => 종료 => 'NO ID' 메세지 
			 *  	id(O) => 3)번으로 이동
			 *  3) pwd를 확인
			 *  	pwd(X) => 종료 => 'NO PWD' 메세지
			 *  	pwd(O) => 종료 => OK => 화면 이동(MainServlet)
			 *  	=========================
			 *  	개인 정보 중에 프로그램 종료 시까지 유지해야 되는 데이터를 세션(모든 서블릿/JSP에서 필요할 때마다 사용 가능 => 전역 변수)에 저장
			 *  	
			 *  	*** 저장 공간
			 *  		= 세션 : 서버에 저장
			 *  			- 보안 강함
			 *  				· 저장
			 *  				· 수정
			 *  				· 삭제
			 *  				· 모든 정보 삭제
			 *  				· 저장 기간 설정
			 *  		= 쿠키 : 브라우저에 저장
			 *  			- 보안 취약
			 *  	
			 */
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally
		{
			// 반환
			disConnection();
		}
		return vo;
	}
}