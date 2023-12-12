package com.sist.change;

public class JspChange {
	private static  String[] jsp= {
			"",
			"all.jsp",
			"best.jsp",
			"new.jsp",
			"sp.jsp",
			"detail.jsp"
			
	};
	
	public static String change(int type)
	{
		return jsp[type];
	}
}
