package com.sist.dao;
import java.text.SimpleDateFormat;
import java.util.*;
public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SimpleDateFormat sdf=new SimpleDateFormat("YYYY-MM-dd");
		String today=sdf.format(new Date());
		System.out.println(today);
	}

}
