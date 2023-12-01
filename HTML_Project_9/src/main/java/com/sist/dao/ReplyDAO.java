package com.sist.dao;
import java.sql.*;
import java.util.*;
import javax.sql.*;
import javax.naming.*;
public class ReplyDAO {
	   private Connection conn;
	   private PreparedStatement ps;
	   private static ReplyDAO dao;
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
			   if(ps!=null) ps.close();
			   if(conn!=null) conn.close();
		   }catch(Exception ex) {}
	   }
	   public static ReplyDAO newInstance()
	   {
		   if(dao==null)
			   dao=new ReplyDAO();
		   return dao;
	   }
	   
	   // 기능 
	   // 1. 목록 => 1=>goods_all 2 3 4
	   public List<ReplyVO> replyListData(int typeno,int gno)
	   {
		   List<ReplyVO> list=new ArrayList<ReplyVO>();
		   try
		   {
			   getConnection();
			   String sql="SELECT rno,id,name,msg,TO_CHAR(regdate,'YYYY-MM-DD HH24:MI:SS') "
					     +"FROM reply "
					     +"WHERE typeno=? AND gno=? "
					     +"ORDER BY rno DESC";
			   ps=conn.prepareStatement(sql);
			   ps.setInt(1, typeno);
			   ps.setInt(2, gno);
			   ResultSet rs=ps.executeQuery();
			   while(rs.next())
			   {
				   ReplyVO vo=new ReplyVO();
				   vo.setRno(rs.getInt(1));
				   vo.setId(rs.getString(2));
				   vo.setName(rs.getString(3));
				   vo.setMsg(rs.getString(4));
				   vo.setDbday(rs.getString(5));
				   list.add(vo);
			   }
			   rs.close();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   disConnection();
		   }
		   return list;
	   }
	   // 2. 댓글
	   /*
	    *   RNO                                       NOT NULL NUMBER
            TYPENO                                             NUMBER
            GNO                                                NUMBER
            ID                                                 VARCHAR2(20)
            NAME                                      NOT NULL VARCHAR2(51)
            MSG                                       NOT NULL CLOB
            REGDATE                                            DATE
	    */
	   public void replyInsert(ReplyVO vo)
	   {
		   try
		   {
			   getConnection();
			   String sql="INSERT INTO reply VALUES("
					   +"reply_rno_seq.nextval,"
					   +"?,?,?,?,?,SYSDATE)";
			   ps=conn.prepareStatement(sql);
			   ps.setInt(1, vo.getTypeno());
			   ps.setInt(2, vo.getGno());
			   ps.setString(3, vo.getId());
			   ps.setString(4, vo.getName());
			   ps.setString(5, vo.getMsg());
			   ps.executeUpdate();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   disConnection();
		   }
	   }
	   // 3. 수정 => Jquery
	   public void replyUpdate(int rno,String msg)
	   {
		   try
		   {
			   getConnection();
			   String sql="UPDATE reply SET "
					     +"msg=? "
					     +"WHERE rno=?";
			   ps=conn.prepareStatement(sql);
			   ps.setString(1, msg);
			   ps.setInt(2, rno);
			   ps.executeUpdate();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   disConnection();
		   }
	   }
	   // 4. 삭제 
	   public void replyDelete(int rno)
	   {
		   try
		   {
			   getConnection();
			   String sql="DELETE FROM reply "
					     +"WHERE rno="+rno;
			   ps=conn.prepareStatement(sql);
			   ps.executeUpdate();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   disConnection();
		   }
	   }
	   
	   
}







