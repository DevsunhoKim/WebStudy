package com.sist.temp;

public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Container c=new Container();
		
		// Model이라는 인터페이스 하나를 이용해서 모든 객체를 연결
		Model m=c.getBean("board");
		m.execute();
		
		Model m1=c.getBean("board");
		m1.execute();
		
		Model m2=c.getBean("board");
		m2.execute();
		
		System.out.println("m="+m);
		System.out.println("m1="+m1);
		System.out.println("m2="+m2);
		// 메모리 주소가 모두 동일!! => 자동으로 싱글턴으로 생성!!! => 100개든 200개든 메모리 하나로 쓴다
		
		/*
		 * m=c.getBean("member"); m.execute();
		 * 
		 * m=c.getBean("food"); m.execute();
		 */
	}

}
