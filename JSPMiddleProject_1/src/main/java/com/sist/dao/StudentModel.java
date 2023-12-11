package com.sist.dao;

public class StudentModel {
	public StudentVO studentDetailData()
	{
		StudentVO vo=new StudentVO();
		vo.setHakbun(1);
		vo.setName("홍길동");
		vo.setKor(90);
		vo.setEng(70);
		vo.setMath(80);
		return vo;
	}
}
