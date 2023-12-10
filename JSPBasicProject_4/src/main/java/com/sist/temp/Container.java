package com.sist.temp;
import java.util.*;
public class Container {
	private Map map=new HashMap();
	private String[] cls= {"com.sist.temp.BoardModel",
						"com.sist.temp.MemberModel",
						"com.sist.temp.FoodModel"};
	private String[] key= {"board","member","food"};
	// <bean id="" class="">
	public Container() {
		try {
			for(int i=0;i<cls.length;i++) {
				// => 1차 => Spring => factory pattern (클래스 생성해주는 공장패턴)
				Class clsName=Class.forName(cls[i]); // 클래스 정보 읽어오기 => new를 사용하지않고 클래스 이름으로!!!
				Object obj=clsName.getDeclaredConstructor().newInstance();
				map.put(key[i], obj); // 메모리 할당
			}
		}catch(Exception ex) {}
	}
	public Model getBean(String key) {
		return (Model)map.get(key);
	}
}
