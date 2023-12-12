package com.sist.dao;
import java.util.*;
import java.sql.*;
import com.sist.dbcp.*;
// 재사용이 많은 경우, 유효한 내용이 있는 경우
/*
		1. JDBC
		2. DBCP ==> 1차프로젝트 사용
		3. Spring.jar
		============= 라이브러리 => 소스량이 짧아진다(중복제거)
		=> List, VO ==> 전체 통합
		==> MyBatis => 메소드이름이 동일함
 */

public class DataBoardDAO {
	private Connection conn;
	private PreparedStatement ps;
	private CreateDBCPConnection dbconn=new CreateDBCPConnection();
	
	public List<DataBoardBean> boardListData(){
		List<DataBoardBean> list=new ArrayList<DataBoardBean>();
		try {
			conn=dbconn.getConnection();
			String sql="SELECT no,subject,name,regdate,hit "
					+ "FROM databoard "
					+ "ORDER BY no DESC";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				DataBoardBean vo=new DataBoardBean();
				vo.setNo(rs.getInt(1));
				vo.setSubject(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setRegdate(rs.getDate(4));
				vo.setHit(rs.getInt(5));
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
	
	// 추가 ==> <jsp:setProperty> (X)
	public void boardInsert(DataBoardBean vo) {
		try {
			conn=dbconn.getConnection();
			String sql="INSERT INTO databoard(no,name,subject,content,pwd,filename,filesize) "
					+ "VALUES(db_no_seq.nextval,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getName());
			ps.setString(2, vo.getSubject());
			ps.setString(3, vo.getContent());
			ps.setString(4, vo.getPwd());
			ps.setString(5, vo.getFilename());
			ps.setInt(6, vo.getFilesize());
			
			ps.executeUpdate();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			dbconn.disConnection(conn, ps);
		}
	}
	
	// 상세보기
	public DataBoardBean boardDetail(int no) {
		DataBoardBean vo=new DataBoardBean();
		try {
			conn=dbconn.getConnection();
			String sql="UPDATE databoard SET "
					+ "hit=hit+1 "
					+ "WHERE no="+no;
			ps=conn.prepareStatement(sql);
			ps.executeUpdate();
			sql="SELECT no,name,subject,content,regdate,hit,filename,filesize "
					+ "FROM databoard WHERE no="+no;
			
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			rs.next();
			vo.setNo(rs.getInt(1));
			vo.setName(rs.getString(2));
			vo.setSubject(rs.getString(3));
			vo.setContent(rs.getString(4));
			vo.setRegdate(rs.getDate(5));
			vo.setHit(rs.getInt(6));
			vo.setFilename(rs.getString(7));
			vo.setFilesize(rs.getInt(8));
			rs.close();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			dbconn.disConnection(conn, ps);
		}
		return vo;
	}
	// 삭제
	public void boardDelete(int no) {
		try {
			conn=dbconn.getConnection();
			String sql="DELETE FROM databoard "
					+ "WHERE no="+no;
			ps=conn.prepareStatement(sql);
			ps.executeUpdate();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			dbconn.disConnection(conn, ps);
		}
	}
	public DataBoardBean boardFileInfoData(int no) {
		DataBoardBean vo=new DataBoardBean();
		try {
			conn=dbconn.getConnection();
			String sql="SELECT filename,filesize "
					+ "FROM databoard "
					+ "WHERE no="+no;
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			rs.next();
			vo.setFilename(rs.getString(1));
			vo.setFilesize(rs.getInt(2));
			rs.close();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			dbconn.disConnection(conn, ps);
		}
		return vo;
	}
}

