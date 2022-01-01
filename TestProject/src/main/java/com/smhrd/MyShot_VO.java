package com.smhrd;

import java.sql.Date;

public class MyShot_VO {
	
	private int rev_seq ;
	private String user_id;
	private Date rev_date;
	private String shot_yn;
	private int shot_seq;
	private int hos_seq;
	
	
	public int getRev_seq() {
		return rev_seq;
	}
	public void setRev_seq(int rev_seq) {
		this.rev_seq = rev_seq;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public Date getRev_date() {
		return rev_date;
	}
	public void setRev_date(Date rev_date) {
		this.rev_date = rev_date;
	}
	public String getShot_yn() {
		return shot_yn;
	}
	public void setShot_yn(String shot_yn) {
		this.shot_yn = shot_yn;
	}
	public int getShot_seq() {
		return shot_seq;
	}
	public void setShot_seq(int shot_seq) {
		this.shot_seq = shot_seq;
	}
	public int getHos_seq() {
		return hos_seq;
	}
	public void setHos_seq(int hos_seq) {
		this.hos_seq = hos_seq;
	}

	
}
