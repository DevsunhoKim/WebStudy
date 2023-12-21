package com.sist.dao;
import java.sql.*;
import java.util.*;
import com.sist.dbcp.*;
public class ZipcodeDAO {
   private Connection conn;
   private PreparedStatement ps;
   private CreateDBCPConnection dbconn
                =new CreateDBCPConnection();
   private static ZipcodeDAO dao;
   
   // 싱글턴
   public static ZipcodeDAO newInstance()
   {
	   if(dao==null)
		   dao=new ZipcodeDAO();
	   return dao;
   }
   
   // 우편번호 검색 
   public List<ZipcodeVO> postFind(String dong)
   {
	   List<ZipcodeVO> list=
			   new ArrayList<ZipcodeVO>();
	   try
	   {
		   conn=dbconn.getConnection();
		   String sql="SELECT zipcode,sido,gugun,dong,NVL(bunji,' ') "
				     +"FROM zipcode "
				     +"WHERE dong LIKE '%'||?||'%'";
		   ps=conn.prepareStatement(sql);
		   ps.setString(1, dong);
		   ResultSet rs=ps.executeQuery();
		   while(rs.next())
		   {
			   ZipcodeVO vo=new ZipcodeVO();
			   vo.setZipcode(rs.getString(1));
			   vo.setSido(rs.getString(2));
			   vo.setGugun(rs.getString(3));
			   vo.setDong(rs.getString(4));
			   vo.setBunji(rs.getString(5));
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
}



