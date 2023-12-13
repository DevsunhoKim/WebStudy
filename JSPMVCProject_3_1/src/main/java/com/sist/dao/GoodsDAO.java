package com.sist.dao;
import java.sql.*;
import java.util.*;
import com.sist.vo.*;
import com.sist.dbcp.*;
public class GoodsDAO {
	private Connection conn;
	private PreparedStatement ps;
	private CreateDBCPConnection dbconn=new CreateDBCPConnection();
	 private static GoodsDAO dao;
	private final int ROWSIZE=12;
	public static GoodsDAO newInstance()
	   {
		   if(dao==null)
			   dao=new GoodsDAO();
		   return dao;
	   }
	
	public List<GoodsVO> goodsListData(int page)
	{
		List<GoodsVO> list=new ArrayList<GoodsVO>();
		try {
			conn=dbconn.getConnection();
			String sql="SELECT gno,gname,poster,price,num "
					+ "FROM (SELECT gno,gname,poster,price,rownum as num "
					+ "FROM (SELECT gno,gname,poster,price "
					+ "FROM goods ORDER BY gno ASC)) "
					+ "WHERE num BETWEEN ? AND ?";
			ps=conn.prepareStatement(sql);
			int start=(ROWSIZE*page)-(ROWSIZE-1);
			int end=ROWSIZE*page;
			ps.setInt(1, start);
			ps.setInt(2, end);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				GoodsVO vo=new GoodsVO();
				vo.setGno(rs.getInt(1));
				vo.setGname(rs.getString(2));
				vo.setPoster(rs.getString(3));
				vo.setPrice(rs.getString(4));
				list.add(vo);
			}
			rs.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally {
			dbconn.disConnection(conn, ps);
		}
		return list;
	}
	public int totalPage()
	{
		int total=0;
		try {
			conn=dbconn.getConnection();
			String sql="SELECT CEIL(COUNT(*)/"+ROWSIZE+") "
					+ "FROM goods";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			rs.next();
			total=rs.getInt(1);
			rs.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally {
			dbconn.disConnection(conn, ps);
		}
		return total;
		
	}
	
	 public GoodsVO GoodsDetail(int gno)
	   {
		   GoodsVO vo=new GoodsVO();
		   try
		   {
			   conn=dbconn.getConnection();
			   String sql="SELECT gno,gname,poster,origin,manufacturer "
				  +"FROM goods "
				  +"WHERE gno="+gno;
			   ps=conn.prepareStatement(sql);
			   ResultSet rs=ps.executeQuery();
			   rs.next();
			   vo.setGno(rs.getInt(1));
			   vo.setGname(rs.getString(2));
			   vo.setPoster(rs.getString(3));
			   vo.setOrigin(rs.getString(4));
			   vo.setManufacturer(rs.getString(5));
			   
			   rs.close();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   dbconn.disConnection(conn, ps);
		   }
		   return vo;
	   }
	
	
}
