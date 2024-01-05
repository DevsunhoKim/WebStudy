package com.sist.dao;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;
public class EmpDAO {
   // 파싱 (XML) => <select id="">SELECT~ #{}</select>
   // map.put("id","SELECT~")  selectList(id명,?)
   private static SqlSessionFactory ssf;
   // XML을 전송 => 파싱 
   static 
   {
	   try
	   {
		   //1. XML을 읽어 온다 
		   Reader reader=Resources.getResourceAsReader("Config.xml");
		   //2. XML에 설정된 데이터 읽기 => Map
		   ssf=new SqlSessionFactoryBuilder().build(reader);
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
   }
   // 기능 설정 
   /*
    *    A a=new A()
    *    a.set1()
    *    a.set2()
    *    a.set3()
    *    
    *    new A().set1()
    *    new A().set2()
    *    new A().set3()
    */
   public static List<EmpVO> empListData()
   {
	   SqlSession session=ssf.openSession();
	   List<EmpVO> list=session.selectList("empListData");
	   session.close();
	   return list;
   }
   public static List<EmpVO> empDeptJoinData()
   {
	   SqlSession session=ssf.openSession();
	   List<EmpVO> list=session.selectList("empDeptJoinData");
	   session.close();
	   return list;
   }
   public static List<EmpVO> empDeptSubqueryData()
   {
	   SqlSession session=ssf.openSession();
	   List<EmpVO> list=session.selectList("empDeptSubqueryData");
	   session.close();
	   return list;
   }
   
   public static List<String> empNameData()
   {
	   SqlSession session=ssf.openSession();
	   List<String> list=session.selectList("empNameData");
	   session.close();
	   return list;
   }
   public static List<EmpVO> empFindData(String[] names)
   {
	   SqlSession session=ssf.openSession();
	   Map map=new HashMap();
	   map.put("names", names);
	   List<EmpVO> list=session.selectList("empFindData",map);
	   session.close();
	   return list;
   }
}