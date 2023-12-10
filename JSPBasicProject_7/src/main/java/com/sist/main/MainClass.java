package com.sist.main;

import java.util.Arrays;
import java.net.*;

public class MainClass {
	public static void main(String[] args) throws Exception{
		String name="홍길동";
		System.out.println(URLEncoder.encode(name,"UTF-8"));
	}
}
