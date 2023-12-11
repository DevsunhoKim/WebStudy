package com.sist.vo;
/*
         FNO                                       NOT NULL NUMBER
		 POSTER                                    NOT NULL VARCHAR2(1000)
		 NAME                                      NOT NULL VARCHAR2(300)
		 TYPE                                      NOT NULL VARCHAR2(100)
		 ADDRESS                                   NOT NULL VARCHAR2(500)
		 PHONE                                     NOT NULL VARCHAR2(100)
		 SCORE                                              NUMBER(2,1)
		 THEME                                     NOT NULL VARCHAR2(4000)
		 PRICE                                              VARCHAR2(100)
		 TIME                                               VARCHAR2(200)
		 SEAT                                               VARCHAR2(100)
		 CONTENT                                            CLOB
		 LINK                                               VARCHAR2(300)
		 // a8b770a89aec1599120a66eb6392863b
		 
 */
public class FoodVO {
	private int fno;
	private String poster,name,type,address,phone,theme,price,time,seat,content;
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	private double score;
}
