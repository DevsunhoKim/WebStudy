package com.sist.dao;
import java.sql.*;
import java.util.*;

public class ExDAO {
  private Connection conn;
  private PreparedStatement ps;
  private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
  private static ExDAO dao;
  // 드라이버 등록 => 한번만 생성 생성자에서 호출
  public ExDAO()
  {
	  try
	  {
		  Class.forName("oracle.jdbc.driver.OracleDriver");
	  }catch(Exception ex) {}
  }
  // 오라클 연결
  public void getConnection()
  {
	  try
	  {
		  conn=DriverManager.getConnection(URL,"hr","happy");
	  }catch(Exception ex) {}
  }
  // 오라클 닫기
  public void disConnection()
  {
	  try
	  {
		if(ps!=null) ps.close();
		if(conn!=null) conn.close();
	  }catch(Exception ex) {}
  }
  // 싱글턴 패턴 => 메모리 공간 1개 생성
  public static ExDAO newInstance()
  {
	  // 라이브러리 => enwInstance,getInstance() => 싱글턴 패턴
	  if(dao==null)
		  dao=new ExDAO();
	  return dao;
  }
  // 기능 설정
  // => 목록(table) =>인라인 뷰 => 페이지 설정
  public List<ExVO> exListData(int page)
  {
	  List<ExVO> list=new ArrayList<ExVO>();
	  //https://www.menupan.com/
	  try
	  {
		  getConnection();
		  // 페이지마다 데이터 읽기
		  int rowSize=20;
		  // num BETWEEN ? AND ? =1page => 1~20
		  int start=(rowSize*page)-(rowSize-1);
		  int end=rowSize*page;
		  String sql="SELECT eno,ename,poster,loc,host,loc_detail "
				  +"FROM exhibition "
				  ;
				  
		  ps=conn.prepareStatement(sql);
		
		  // Index_ASC(테이블명,인덱스명,PK,UK) , INDEX_DESC , INDEX()
		  ResultSet rs=ps.executeQuery();
		  while(rs.next())
		  {
			  ExVO vo=new ExVO();
			  vo.setEno(rs.getInt(1));
			  vo.setEname(rs.getString(2));
			  vo.setPoster(rs.getString(3));
			  vo.setLoc(rs.getString(4));
			  vo.setHost(rs.getString(5));
			  list.add(vo);
			  
			  
		  }
		  rs.close();
	  }catch(Exception ex)
	  {
		  ex.printStackTrace();
	  }finally
	  {
		  disConnection();
	  }
	  return list;
  }
  // 총페이지
  public int exTotalPage()
  {
	  int total=0;
	  try
	  {
		  getConnection();
		  String sql="SELECT CEIL(COUNT(*)/20.0) FROM exhibition";
		  ps=conn.prepareStatement(sql);
		  ResultSet rs=ps.executeQuery();
		  rs.next();
		  total=rs.getInt(1);
		  rs.close();
	  }catch(Exception ex)
	  {
		  ex.printStackTrace();
	  }finally
	  {
		  disConnection();
	  }
	  return total;
  }
  // => 상세보기 (table)
}
