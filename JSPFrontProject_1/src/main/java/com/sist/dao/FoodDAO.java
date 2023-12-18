package com.sist.dao;
import java.util.*;
import java.sql.*;
import com.sist.dbcp.*;
public class FoodDAO {
   private Connection conn;
   private PreparedStatement ps;
   private CreateDBCPConnection dbconn=
		      new CreateDBCPConnection();
   public List<FoodVO> foodCategoryList(String type)
   {
	   List<FoodVO> list=
			   new ArrayList<FoodVO>();
	   try
	   {
		   conn=dbconn.getConnection();
		   String sql="SELECT name,poster,phone,rownum "
				     +"FROM food_menu_house "
				     +"WHERE rownum<=50 AND type LIKE '%"+type+"%'";
		   // 오라클 LIKE '%'||'?'||'%'  => ? => setString() => ''
		   // '%''양식''%'
		   // MySQL LIKE concat('%',?,'%')
		   // ===== LIMIT start,10
		   ps=conn.prepareStatement(sql);
		   ResultSet rs=ps.executeQuery();
		   while(rs.next())
		   {
			   FoodVO vo=new FoodVO();
			   vo.setName(rs.getString(1));
			   vo.setPoster(rs.getString(2));
			   vo.setPhone(rs.getString(3));
			   list.add(vo);
		   }
		   rs.close();
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   // 반환
		   dbconn.disConnection(conn, ps);
	   }
	   return list;
   }
   public List<GoodsVO> goodsListData()
   {
	   List<GoodsVO> list=new ArrayList<GoodsVO>();
	   try
	   {
		   conn=dbconn.getConnection();
		   String sql="SELECT goods_name,goods_poster,rownum "
				     +"FROM goods_all "
				     +"WHERE rownum<=20";
		   ps=conn.prepareStatement(sql);
		   ResultSet rs=ps.executeQuery();
		   while(rs.next())
		   {
			   GoodsVO vo=new GoodsVO();
			   vo.setGoods_name(rs.getString(1));
			   vo.setGoods_poster(rs.getString(2));
			   list.add(vo);
		   }
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   dbconn.disConnection(conn, ps);
	   }
	   return list;
   }
}