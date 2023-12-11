package com.sist.dao;
import java.util.*;
import java.sql.*;
import com.sist.vo.*;
import com.sist.dbcp.*;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement ps;
	private CreateDBCPConnection dbconn=new CreateDBCPConnection();
	private static MemberDAO dao;
	
	// 1. 로그인 
	public MemberVO isLogin(String id,String pwd) {
		// String에서 변경 => 암호화/복호화
		MemberVO vo=new MemberVO();
		try {
			conn=dbconn.getConnection();
			// dbconn.getConnection(); 만쓰면 => this.conn은 null 에러발생
			// ID 존재여부 확인
			String sql="SELECT COUNT(*) FROM jsp_member "
					+ "WHERE id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs=ps.executeQuery();
			rs.next();
			int count=rs.getInt(1);
			rs.close();
			// ID존재 => PWD확인
			if(count==0) {  
				vo.setMsg("NOID");
			}else{
				// session에 저장할 데이터
				sql="SELECT id,name,admin,pwd "
						+ "FROM jsp_Member "
						+ "WHERE id=?";
				// "WHERE id="+id => 오류 발생 (숫자는 상관없지만, 문자열은 싱글따옴표들어가야함)
				//	=> "WHERE id='"+id+"' 
				ps=conn.prepareStatement(sql);
				ps.setString(1, id);
				rs=ps.executeQuery();
				rs.next();
				String db_id=rs.getString(1);
				String name=rs.getString(2);
				String admin=rs.getString(3);
				String db_pwd=rs.getString(4);
				
				if(db_pwd.equals(pwd)) {
					vo.setMsg("OK"); // id,pwd 일치시 session에 저장
					vo.setId(db_id);
					vo.setName(name);
					vo.setAdmin(admin);
				}else {
					vo.setMsg("NOPWD");
				}
				rs.close();
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			dbconn.disConnection(conn, ps);
		}
		return vo;
	}
}