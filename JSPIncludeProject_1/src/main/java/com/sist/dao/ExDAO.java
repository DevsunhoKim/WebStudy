package com.sist.dao;
import java.util.*;

import com.sist.dbcp.CreateDBCPConnection;

import java.sql.*;
import com.sist.vo.*;
public class ExDAO {
	   private Connection conn;
	   private PreparedStatement ps;
	   private CreateDBCPConnection dbconn;
	   private static ExDAO dao;
	   
	  
	   public List<ExVO> exListData(int page)
	   {
		   List<ExVO> list=new ArrayList<ExVO>();
		   
		   try
		   {
			   //1. 연결
			   conn=dbconn.getConnection();
			   // 2. SQL 문장 전송
			   String sql="SELECT eno,ename,poster,num "
					   +"FROM (SELECT eno,ename,poster,rownum as num "
					   +"FROM (SELECT eno,ename,poster "
					   +"FROM exhibition ORDER BY eno ASC)) "
					   +"WHERE num BETWEEN ? AND ?";
			   // 3. 미리 전송
			   ps=conn.prepareStatement(sql);
			   int rowSize=12;
			   int start=(rowSize*page)-(rowSize-1);
			   int end=(rowSize*page);
			   
			   ps.setInt(1, start);
			   ps.setInt(2, end);
			   ResultSet rs=ps.executeQuery();
			   while(rs.next())
			   {
				   ExVO vo=new ExVO();
				   vo.setEno(rs.getInt(1));
				   vo.setEname(rs.getString(2));
				   vo.setPoster(rs.getString(3));
				   list.add(vo);
			   }
			   rs.close();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }finally
		   {
			   dbconn.disConnection(conn, ps);
		   }
		   return list;
	   }
	   
	   public int exTotalPage()
	   {
		   int total=0;
		   try
		   {
			   conn=dbconn.getConnection();
			   String sql="SELECT CEIL(COUNT(*)/12.0) FROM exhibition";
			   ps=conn.prepareStatement(sql);
			   ResultSet rs=ps.executeQuery();
			   rs.next();
			   total = rs.getInt(1);
			   rs.close();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }finally
		   {
			   dbconn.disConnection(conn, ps);
		   }
		   return total;
	   }
	   
	   public List<ExVO> exDetailData(int eno)
	   {
		   List<ExVO> list=new ArrayList<ExVO>();
		   
		   try
		   {
			   //1. 연결
			   conn=dbconn.getConnection();
			   // 2. SQL 문장 전송
			   String sql="SELECT * "
					   +"FROM (SELECT eno,ename,poster,rownum as num "
					   +"FROM (SELECT eno,ename,poster "
					   +"FROM exhibition ORDER BY eno ASC)) "
					   +"WHERE num BETWEEN ? AND ?";
			   // 3. 미리 전송
			   ps=conn.prepareStatement(sql);
			 
			   
			   ResultSet rs=ps.executeQuery();
			   while(rs.next())
			   {
				   ExVO vo=new ExVO();
				   vo.setEno(rs.getInt(1));
				   vo.setEname(rs.getString(2));
				   vo.setPoster(rs.getString(3));
				   vo.setEename(rs.getString(4));
				   vo.setCate(rs.getString(5));
				   vo.setEfield(rs.getString(6));
				   vo.setEitem(rs.getString(7));
				   vo.setHomepage(rs.getString(8));
				   vo.setHost(rs.getString(9));
				   vo.setLoc(rs.getString(10));
				   vo.setLoc_detail(rs.getString(11));
				   list.add(vo);
			   }
			   rs.close();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }finally
		   {
			   dbconn.disConnection(conn, ps);
		   }
		   return list;
	   }
	   
	   
}
