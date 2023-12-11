package com.sist.change;

public class JspChange {
	private static String[] jsp= {
		"",
		"../main/home.jsp",
		"../food/food_find.jsp"
	};
	public static String change(int no) {
		return jsp[no];
	}
}