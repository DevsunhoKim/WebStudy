package com.sist.dao;
import java.util.*;
import java.sql.*;
import com.sist.dbcp.*;
/*
 *   Web Site
 *   1) 메뉴 => 화면 이동 확인 
 *   2) 데이타베이스 연동 
 *   3) 화면 출력 완료 
 *   =====================
 *      Front => Ajax / Vue / React
 *   4) 사용자 입력 유도 ===> 사용자 요구사항 분석 
 *      예)
 *          예약 =======> 예약번호 / ID / 맛집 번호 / 예약일
 *                       ====== =====
 *                       예약시간 / 인원 / 예약여부 / 등록일
 *                                     =======  =====
 *   5) 결과를 출력  
 *   
 *   ==> 입문 
 *       => 1. 데이터베이스 연결 (DBCP/Mybatis)
 *       => 2. 목록 = 상세보기 
 *             => 페이징 
 *       => 3. CRUD (게시판)
 *       
 *                       
 */
import com.sist.vo.GoodsVO;
public class GoodsDAO {
   private Connection conn;
   private PreparedStatement ps;
   private CreateDBCPConnection dbconn=
		       new CreateDBCPConnection();
   private static GoodsDAO dao;
   
   // 싱글턴 
   public static GoodsDAO newInstance()
   {
	   if(dao==null)
		   dao=new GoodsDAO();
	   return dao;
   }
   
   // 전체 상품 목록 
   public List<GoodsVO> goodsAllListData(int page)
   {
	   List<GoodsVO> list=
			   new ArrayList<GoodsVO>();
	   try
	   {
		   conn=dbconn.getConnection();
		   String sql="SELECT no,goods_name,goods_poster,goods_price,num "
				     +"FROM (SELECT no,goods_name,goods_poster,goods_price,rownum as num "
				     +"FROM (SELECT no,goods_name,goods_poster,goods_price "
				     +"FROM goods_all ORDER BY no ASC)) "
				     +"WHERE num BETWEEN ? AND ?";
		   ps=conn.prepareStatement(sql);
		   int rowSize=12;
		   int start=(rowSize*page)-(rowSize-1); //rownum => 1
		   int end=rowSize*page;
		   
		   // ? => 값을 채운다 
		   ps.setInt(1, start);
		   ps.setInt(2, end);
		   
		   ResultSet rs=ps.executeQuery();
		   while(rs.next()) // rs=>단위가 Record단위 => 여러개를 동시에
		   {
			   GoodsVO vo=new GoodsVO();
			   vo.setNo(rs.getInt(1));
			   vo.setGoods_name(rs.getString(2));
			   vo.setGoods_poster(rs.getString(3));
			   vo.setGoods_price(rs.getString(4));
			   list.add(vo);
		   }
		   
		   rs.close();
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
   // 프로그램 개발 => 시행착오 (에러 확인)
   public int goodsAllTotalpage()
   {
	   int total=0;
	   try
	   {
		   conn=dbconn.getConnection();
		   String sql="SELECT CEIL(COUNT(*)/12.0) "
				     +"FROM goods_all";
		   ps=conn.prepareStatement(sql);
		   ResultSet rs=ps.executeQuery();
		   rs.next();
		   total=rs.getInt(1);
		   rs.close();
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		  dbconn.disConnection(conn, ps); 
	   }
	   return total;
   }
   // 전체 상품 상세 => 결제창 출력
   public GoodsVO goodsAllDetailData(int no)
   {
	   GoodsVO vo=new GoodsVO();
	   try
	   {
		   conn=dbconn.getConnection();
		   String sql="UPDATE goods_all SET "
				     +"hit=hit+1 "
		             +"WHERE no="+no;
		   ps=conn.prepareStatement(sql);
		   ps.executeUpdate();
		   
		   sql="SELECT * FROM goods_all "
				     +"WHERE no="+no;
		  ps=conn.prepareStatement(sql);
		  ResultSet rs=ps.executeQuery();
		  rs.next();
		  vo.setNo(rs.getInt(1));
		  vo.setGoods_name(rs.getString(2));
		  vo.setGoods_sub(rs.getString(3));
		  vo.setGoods_price(rs.getString(4));
		  vo.setGoods_discount(rs.getInt(5));
		  vo.setGoods_first_price(rs.getString(6));
		  vo.setGoods_delivery(rs.getString(7));
		  vo.setGoods_poster(rs.getString(8));
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






