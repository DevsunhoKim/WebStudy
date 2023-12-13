package com.sist.dao;
import java.util.*;
import java.sql.*;
import com.sist.vo.*;
import com.sist.dbcp.*;
// 구매 
public class TourDAO {
  private Connection conn;
  private PreparedStatement ps;
  private CreateDBCPConnection dbconn=
		      new CreateDBCPConnection();
  private static TourDAO dao;
  
  private final int ROW_SIZE=12;
  /*
   *    while(rs.next())
   *    {
   *       int no=rs.getInt(1);
   *       String name=rs.getString(2);
   *       String dept=rs.getString(3);
   *       list.add()
   *    }
   */
  // 기능 
  public List<TourVO> tourListData(int page,int type)
  {
	  List<TourVO> list=new ArrayList<TourVO>();
	  try
	  {
		  conn=dbconn.getConnection();
		  String sql = "SELECT tno, title, poster, addr, num "
		            + "FROM (SELECT tno, title, poster, addr, ROWNUM AS num "
		            + "FROM (SELECT tno, title, poster, addr "
		            + "FROM tour "  // Replace "your_table_name" with your actual table name
		            + "ORDER BY tno ASC)) "
		            + "WHERE num BETWEEN ? AND ?";

		  ps=conn.prepareStatement(sql);
		  int start=(ROW_SIZE*page)-(ROW_SIZE-1);
		  int end=ROW_SIZE*page;
		  
		  ps.setInt(1, start);
		  ps.setInt(2, end);
		  
		  // setInt()       setString() setDate....
		  // ======== ''없다 ======================= ''
		  /*
		   *   WHERE name='홍길동'
		   */
		  /*
		   *   "WHERE name='"+name+"'" => 오류 
		   */
		  ResultSet rs=ps.executeQuery();
		  while(rs.next())
		  {
			  TourVO vo=new TourVO();
			  vo.setTno(rs.getInt(1));
			  vo.setPoster(rs.getString(2));
			  vo.setTitle(rs.getString(3));
			  vo.setAddr(rs.getString(4));
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
  // 총페이지 
  public int tourTotalPage(int type)
  {
	  int total=0;
	  try
	  {
		  conn=dbconn.getConnection();
		  String sql="SELECT CEIL(COUNT(*)/"+ROW_SIZE+") "
				    +"FROM tour";
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
  /*
   *  NO                                        NOT NULL NUMBER
 Tour_NAME                                NOT NULL VARCHAR2(1000)
 Tour_SUB                                          VARCHAR2(1000)
 Tour_PRICE                               NOT NULL VARCHAR2(50)
 Tour_DISCOUNT                                     NUMBER
 Tour_FIRST_PRICE                                  VARCHAR2(20)
 Tour_DELIVERY                            NOT NULL VARCHAR2(20)
 Tour_POSTER
   */
  /*
  public TourVO TourDetailData(int type,int no)
  {
	  TourVO vo=new TourVO();
	  try
	  {
		  conn=dbconn.getConnection();
		  String sql="SELECT * FROM "+tables[type]
				    +" WHERE no="+no;
		  ps=conn.prepareStatement(sql);
		  ResultSet rs=ps.executeQuery();
		  rs.next();
		  vo.setNo(rs.getInt(1));
		  vo.setTour_name(rs.getString(2));
		  vo.setTour_sub(rs.getString(3));
		  vo.setTour_price(rs.getString(4));
		  vo.setTour_discount(rs.getInt(5));
		  vo.setTour_first_price(rs.getString(6));
		  vo.setTour_delivery(rs.getString(7));
		  vo.setposter(rs.getString(8));
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
  */
}