package com.sist.vo;

public class ExVO {
	/*
	 *  이름                                      널?      유형
 ----------------------------------------- -------- ----------------------------
 ENO                                       NOT NULL NUMBER(4)
 ENAME                                     NOT NULL VARCHAR2(200)
 EENAME                                             VARCHAR2(200)
 EFIELD                                             VARCHAR2(200)
 EITEM                                              VARCHAR2(200)
 CATE                                               VARCHAR2(200)
 HOMEPAGE                                           VARCHAR2(500)
 S_DATE                                             DATE
 E_DATE                                             DATE
 LOC                                                VARCHAR2(200)
 LOC_DETAIL                                         VARCHAR2(200)
 HOST                                               VARCHAR2(200)
 POSTER                                             VARCHAR2(500)
 ELIKE                                              NUMBER(8)
 JJIM                                               NUMBER(8)
 SCORE                                              NUMBER(2,1)
 PRICE                                              NUMBER(10)
 HIT                                                NUMBER(8)

	 */
	private int eno,pirce;
	private String ename,eename,efield,eitem,cate,homepage
	,loc,loc_detail,host,poster;
	public int getEno() {
		return eno;
	}
	public void setEno(int eno) {
		this.eno = eno;
	}
	public int getPirce() {
		return pirce;
	}
	public void setPirce(int pirce) {
		this.pirce = pirce;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEename() {
		return eename;
	}
	public void setEename(String eename) {
		this.eename = eename;
	}
	public String getEfield() {
		return efield;
	}
	public void setEfield(String efield) {
		this.efield = efield;
	}
	public String getEitem() {
		return eitem;
	}
	public void setEitem(String eitem) {
		this.eitem = eitem;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getLoc_detail() {
		return loc_detail;
	}
	public void setLoc_detail(String loc_detail) {
		this.loc_detail = loc_detail;
	}
	public String getHost() {
		return host;
	}
	public void setHost(String host) {
		this.host = host;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	
}
